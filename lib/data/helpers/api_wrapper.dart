// coverage:ignore-file

import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/app/app.dart';
import 'package:weather_app/domain/domain.dart';

/// API WRAPPER to call all the APIs and handle the error status codes
class ApiWrapper {
  /// Method to make all the requests inside the app like GET, POST, PUT, Delete
  Future<ResponseModel> makeRequest(String apiUrl, Request request,
      dynamic data, bool isLoading, Map<String, String> headers) async {
    Future<ResponseModel> _responseModel;
    if (kIsWeb) {
      _responseModel =
          makeFinalRequest(apiUrl, request, data, isLoading, headers);
      var response = await _responseModel;
      if (response.errorCode == 406) {
        _responseModel =
            makeFinalRequest(apiUrl, request, data, isLoading, headers);
      }
      return _responseModel;
    } else {
      /// To see whether the network is available or not
        _responseModel =
            makeFinalRequest(apiUrl, request, data, isLoading, headers);
        var response = await _responseModel;
        if (response.errorCode == 406) {
          _responseModel =
              makeFinalRequest(apiUrl, request, data, isLoading, headers);
        }
        return _responseModel;
    }
  }

  Future<ResponseModel> uploadFileRequest(
    String url,
    Request request,
    Map<String, String> data,
    bool isLoading,
    Map<String, String> headers,
    String field,
    String filePath,
  ) async {
      if (request == Request.post) {
        var uri = url;


        try {
          var request = http.MultipartRequest('POST', Uri.parse(uri))
            ..headers.addAll(headers)
            ..fields.addAll(
              data,
            )
            ..files.add(
              await http.MultipartFile.fromPath(
                field,
                filePath,
              ),
            );

          var streamedResponse = await request.send();

          // final respStr = await response.stream.bytesToString();
          // log(uri);
          // print('response image wrapper str $respStr');
          //print('response image wrapper $streamedResponse');
          // return respStr;
          var response = await http.Response.fromStream(streamedResponse);
          //print('response ${response.body}');
          return _returnResponse(response);
        } on TimeoutException catch (_) {
          return ResponseModel(
              data: '{"message":"Request timed out"}', hasError: true);
          // return ResponseModel(
          //   data: '{"message":"Request timed out"}',
          //   hasError: true,
          // );
        }
      } else {
        return ResponseModel(
            data: '{"message":"Request timed out"}', hasError: true);
      }
    }
  }

  // Future<SecurityContext> get globalContext async {
  //   final sslCert1 = await rootBundle.load('assets/certificates/google');
  //   var sc = SecurityContext(withTrustedRoots: false);
  //   sc.setTrustedCertificatesBytes(sslCert1.buffer.asInt64List());
  //   return sc;
  // }

  /// Method to make all the requests inside the app like GET, POST, PUT, Delete
  Future<ResponseModel> makeFinalRequest(String apiUrl, Request request,
      dynamic data, bool isLoading, Map<String, String> headers) async {
    // var _client = HttpClient(context: await globalContext);
    // _client.badCertificateCallback =
    //     (X509Certificate cert, String host, int port) => false;
    // var _ioClient = IOClient(_client);

    switch (request) {

      /// Method to make the Get type request
      case Request.get:
        {
          if(isLoading) Utility.showLoadingDialog();
          try {
            final response = await http
                .get(
                  Uri.parse(apiUrl),
                  headers: headers,
                )
                .timeout(const Duration(seconds: 60));
            if(isLoading) Utility.closeDialog();
            return _returnResponse(response);
          } on TimeoutException catch (_) {
            return ResponseModel(
                data: '{"message":"Request timed out"}', hasError: true);
          }
        }
      case Request.post:

        /// Method to make the Post type request
        {
          try {
            final response = await http
                .post(
                  Uri.parse(apiUrl),
                  body: jsonEncode(data),
                  headers: headers,
                )
                .timeout(const Duration(seconds: 60));
            return _returnResponse(response);
          } on TimeoutException catch (_) {
            return ResponseModel(
                data: '{"message":"Request timed out"}', hasError: true);
          }
        }
      case Request.put:

        /// Method to make the Put type request
        {
          try {
            final response = await http
                .put(
                  Uri.parse(apiUrl),
                  body: jsonEncode(data),
                  headers: headers,
                )
                .timeout(const Duration(seconds: 60));
            return _returnResponse(response);
          } on TimeoutException catch (_) {
            return ResponseModel(
                data: '{"message":"Request timed out"}', hasError: true);
          }
        }

      case Request.patch:

        /// Method to make the Patch type request
        {
          try {
            final response = await http
                .patch(
                  Uri.parse(apiUrl),
                  body: jsonEncode(data),
                  headers: headers,
                )
                .timeout(const Duration(seconds: 60));
            return _returnResponse(response);
          } on TimeoutException catch (_) {
            return ResponseModel(
                data: '{"message":"Request timed out"}',
                hasError: true,
                errorCode: 1000);
          }
        }
      case Request.delete:

        /// Method to make the Delete type request
        {
          try {
            final response = await http
                .delete(
                  Uri.parse(apiUrl),
                  body: jsonEncode(data),
                  headers: headers,
                )
                .timeout(const Duration(seconds: 60));

            return _returnResponse(response);
          } on TimeoutException catch (_) {
            return ResponseModel(
                data: '{"message":"Request timed out"}', hasError: true);
          }
        }
      case Request.awsUpload:

        /// Method to make the Put type request
        {
          try {
            final response = await http
                .put(
                  Uri.parse(apiUrl),
                  body: data,
                  headers: headers,
                )
                .timeout(const Duration(seconds: 120));
            return _returnResponse(response);
          } on TimeoutException catch (_) {
            return ResponseModel(
                data: '{"message":"Request timed out"}', hasError: true);
          }
        }
    }
  }

  /// This method is used for the get refresh token
  Future<ResponseModel> getRefreshToken(String apiUrl, Request request,
      dynamic data, bool isLoading, Map<String, String> headers) async {
    try {
      final response = await http
          .get(
            Uri.parse(apiUrl),
            headers: headers,
          )
          .timeout(const Duration(seconds: 60));
      return _returnResponse(response);
    } on TimeoutException catch (_) {
      return ResponseModel(
          data: '{"message":"Request timed out"}', hasError: true);
    }
  }
  //
  // /// If there is no network available then instead of print can show the no internet widget too
  // else {
  //   // Utility.noInternetConnection();
  //   return ResponseModel(
  //       data:
  //       '{"message":"No internet, please enable mobile data or wi-fi in your phone settings and try again"}',
  //       hasError: true,
  //       errorCode: 1000);
  // }

/// Method to return the API response based upon the status code of the server
ResponseModel _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 208:
      return ResponseModel(
        data: response.body,
        hasError: false,
        errorCode: response.statusCode,
      );
    case 400:
      return ResponseModel(
        data: response.body,
        hasError: true,
        errorCode: response.statusCode,
      );
    case 401:
      return ResponseModel(
        data: response.body,
        hasError: true,
        errorCode: response.statusCode,
      );
    case 406:
      return ResponseModel(
        data: response.body,
        hasError: false,
        errorCode: response.statusCode,
      );
    case 409:
    case 500:
      return ResponseModel(
        data: response.body,
        hasError: true,
        errorCode: response.statusCode,
      );
    case 502:
      return ResponseModel(
        data: response.body,
        hasError: true,
        errorCode: response.statusCode,
      );
    case 522:
      return ResponseModel(
        data: response.body,
        hasError: true,
        errorCode: response.statusCode,
      );

    default:
      return ResponseModel(
          data: response.body, hasError: true, errorCode: response.statusCode);
  }
}

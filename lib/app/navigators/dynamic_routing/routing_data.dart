// coverage:ignore-file
class RoutingData {
  RoutingData(
      {required this.route, required Map<String, String> queryParameter})
      : _queryParameter = queryParameter;

  final String route;
  final Map<String, String> _queryParameter;

  String? operator [](String key) => _queryParameter[key];
}

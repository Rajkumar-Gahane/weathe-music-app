// // coverage:ignore-file
// import 'package:flutter/widgets.dart';
// import 'package:flutter_hospice_hub/app/app.dart';
//
//
//
// Route<dynamic> generateRoute(RouteSettings settings) {
//   // var routingData = settings.name!.getRoutingData;
//
//   switch (settings.name) {
//     case Routes.splashScreen:
//       return _getPageRoute(SplashView(), settings);
//     case Routes.resetPassword:
//       return _getPageRoute(ResetPasswordView(), settings);
//     case Routes.emailVerified:
//       return _getPageRoute(const EmailVerifiedView(), settings);
//     case Routes.signIn:
//       return _getPageRoute( SignInView(), settings);
//     case Routes.admin:
//       return _getPageRoute( AdminView(), settings);
//     case Routes.superAdmin:
//       return _getPageRoute( SuperAdminView(), settings);
//     default:
//       return _getPageRoute(PageNotFound(
//           buttonText: 'home', onTap: () {SignInView();}), settings);
//   }
// }
//
// PageRoute _getPageRoute(Widget child, RouteSettings settings) =>
//     _FadeRoute(child: child, routeName: settings.name!);
//
// class _FadeRoute extends PageRouteBuilder<dynamic> {
//   _FadeRoute({required this.child, required this.routeName})
//       : super(
//           settings: RouteSettings(name: routeName),
//           pageBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//           ) =>
//               child,
//           transitionsBuilder: (
//             BuildContext context,
//             Animation<double> animation,
//             Animation<double> secondaryAnimation,
//             Widget child,
//           ) =>
//               FadeTransition(
//             opacity: animation,
//             child: child,
//           ),
//         );
//
//   final Widget child;
//   final String routeName;
// }
//
// extension StringExtension on String {
//   RoutingData get getRoutingData {
//     var uriData = Uri.parse(this);
//     return RoutingData(
//         route: uriData.path, queryParameter: uriData.queryParameters);
//   }
// }

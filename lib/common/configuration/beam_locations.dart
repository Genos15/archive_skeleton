// import 'package:beamer/beamer.dart';
// import 'package:fluent_ui/fluent_ui.dart';
//
// import '../../presentation/pages/desktop/home_screen.dart';
// import '../../presentation/pages/desktop/login_screen.dart';
//
// // LOCATIONS
// class HomeLocation extends BeamLocation<BeamState> {
//   @override
//   List<Pattern> get pathPatterns => ['/home/*'];
//
//   @override
//   List<BeamPage> buildPages(BuildContext context, BeamState state) {
//     final pages = [
//       const BeamPage(
//         key: ValueKey('login'),
//         title: 'Login',
//         child: LoginScreen(),
//       ),
//       if (state.uri.pathSegments.contains('home'))
//         const BeamPage(
//           key: ValueKey('home'),
//           title: 'Home',
//           child: HomeScreen(),
//         ),
//     ];
//     return pages;
//   }
// }

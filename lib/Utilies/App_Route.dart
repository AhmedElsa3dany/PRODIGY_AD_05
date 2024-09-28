import 'package:go_router/go_router.dart';
import 'package:qr/Views/Home_View.dart';
import 'package:qr/Views/Scan_View.dart';

// GoRouter configuration
class Approuter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/scanview',
        builder: (context, state) => HomePage(),
      ),
    ],
  );
}

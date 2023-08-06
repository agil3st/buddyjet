import 'package:buddyjet/app/config/constants/routes.dart';
import 'package:buddyjet/app/presentations/index/index_screen.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.index,
        builder: (context, state) => const IndexScreen(),
      ),
    ],
    observers: [FlutterSmartDialog.observer],
    initialLocation: Routes.index,
  );
}

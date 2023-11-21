import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task/core/routes/routes_names.dart';
import 'package:task/features/auth/login_view.dart';
import 'package:task/features/auth/otp_view.dart';
import 'package:task/features/auth/register_view.dart';
import 'package:task/features/home/home_view.dart';

class AppRouter {
  factory AppRouter() => _shared;

  AppRouter._();

  static final _shared = AppRouter._();

  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(
    debugLabel: 'root',
  );

  final router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/${RoutesNames.login}',
    routes: [
      GoRoute(
        path: '/',
        name: RoutesNames.home,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: '/${RoutesNames.login}',
        name: RoutesNames.login,
        builder: (context, state) {
          return const LoginView();
        },
        routes: [
          GoRoute(
            path: RoutesNames.register,
            name: RoutesNames.register,
            builder: (context, state) {
              return const RegisterView();
            },
          ),
          GoRoute(
            path: RoutesNames.otp,
            name: RoutesNames.otp,
            builder: (context, state) {
              final otpCode =
                  int.tryParse(state.uri.queryParameters['otpCode'] ?? '');
                 final phone = int.tryParse(state.uri.queryParameters['phone'] ?? '');
              return OtpView(
                otpCode: otpCode,
                phone: phone,
              );
            },
          ),
        ],
      ),
    ],
  );
}

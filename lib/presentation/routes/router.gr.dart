// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/confirmation_page.dart' as _i3;
import '../pages/convert_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;
import '../pages/status_page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomePage(key: args.key));
    },
    ConvertRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ConvertPage());
    },
    ConfirmationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ConfirmationPage());
    },
    StatusRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.StatusPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeRoute.name, path: '/'),
        _i5.RouteConfig(ConvertRoute.name, path: '/convert-page'),
        _i5.RouteConfig(ConfirmationRoute.name, path: '/confirmation-page'),
        _i5.RouteConfig(StatusRoute.name, path: '/status-page')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i6.Key? key})
      : super(name, path: '/', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i6.Key? key;
}

/// generated route for [_i2.ConvertPage]
class ConvertRoute extends _i5.PageRouteInfo<void> {
  const ConvertRoute() : super(name, path: '/convert-page');

  static const String name = 'ConvertRoute';
}

/// generated route for [_i3.ConfirmationPage]
class ConfirmationRoute extends _i5.PageRouteInfo<void> {
  const ConfirmationRoute() : super(name, path: '/confirmation-page');

  static const String name = 'ConfirmationRoute';
}

/// generated route for [_i4.StatusPage]
class StatusRoute extends _i5.PageRouteInfo<void> {
  const StatusRoute() : super(name, path: '/status-page');

  static const String name = 'StatusRoute';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/confirmation_page.dart' as _i5;
import '../pages/convert_page.dart' as _i4;
import '../pages/home_page.dart' as _i3;
import '../pages/status_page.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
          return _i3.HomePage(key: args.key);
        }),
    ConvertRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ConvertRouteArgs>(
              orElse: () => const ConvertRouteArgs());
          return _i4.ConvertPage(key: args.key);
        }),
    ConfirmationRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.ConfirmationPage();
        }),
    StatusRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.StatusPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(ConvertRoute.name, path: '/convert-page'),
        _i1.RouteConfig(ConfirmationRoute.name, path: '/confirmation-page'),
        _i1.RouteConfig(StatusRoute.name, path: '/status-page')
      ];
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i2.Key? key})
      : super(name, path: '/', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i2.Key? key;
}

class ConvertRoute extends _i1.PageRouteInfo<ConvertRouteArgs> {
  ConvertRoute({_i2.Key? key})
      : super(name, path: '/convert-page', args: ConvertRouteArgs(key: key));

  static const String name = 'ConvertRoute';
}

class ConvertRouteArgs {
  const ConvertRouteArgs({this.key});

  final _i2.Key? key;
}

class ConfirmationRoute extends _i1.PageRouteInfo {
  const ConfirmationRoute() : super(name, path: '/confirmation-page');

  static const String name = 'ConfirmationRoute';
}

class StatusRoute extends _i1.PageRouteInfo {
  const StatusRoute() : super(name, path: '/status-page');

  static const String name = 'StatusRoute';
}

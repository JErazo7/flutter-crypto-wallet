import 'package:auto_route/auto_route.dart';
import 'package:belo/presentation/pages/confirmation_page.dart';
import 'package:belo/presentation/pages/convert_page.dart';
import 'package:belo/presentation/pages/home_page.dart';
import 'package:belo/presentation/pages/status_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: ConvertPage),
    AutoRoute(page: ConfirmationPage),
    AutoRoute(page: StatusPage),
  ],
)
class $AppRouter {}

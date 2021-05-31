import 'package:auto_route/auto_route.dart';
import 'package:flutter_crypto_wallet/presentation/pages/confirmation_page.dart';
import 'package:flutter_crypto_wallet/presentation/pages/convert_page.dart';
import 'package:flutter_crypto_wallet/presentation/pages/home_page.dart';
import 'package:flutter_crypto_wallet/presentation/pages/status_page.dart';

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

import 'package:flutter_crypto_wallet/application/coin_convert/coin_convert_provider.dart';
import 'package:flutter_crypto_wallet/presentation/core/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:auto_route/auto_route.dart';

class StatusPage extends ConsumerWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(coinConvertNotifierProvider);

    return Scaffold(
        body: Center(
            child: ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: state.convertFailureOrSuccessOption.fold(
        () => SizedBox(
            height: 300.h,
            width: 300.h,
            child: Lottie.asset(
              'assets/dollar_animation.json',
            )),
        (either) => either.fold(
          (l) => Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 250.h,
                      width: 250.h,
                      child: Lottie.asset('assets/error_animation.json',
                          repeat: false)),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Upss, vuelve a intentarlo',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 42.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    l.maybeMap(
                        timeLimitExceeded: (_) =>
                            'Has excedido el límite de tiempo',
                        orElse: () => 'Ha ocurrido un error inesperado'),
                    style: TextStyle(color: Colors.black87, fontSize: 36.sp),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
            RoundButton(
              text: 'Reintentar',
              onTap: () {
                context.router.popUntilRouteWithName('ConvertRoute');
              },
            ),
            SizedBox(
              height: 20.h + (ScreenUtil().bottomBarHeight / 2),
            )
          ]),
          (r) => Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 400.h,
                          width: 400.h,
                          child: Lottie.asset(
                            'assets/done_animation.json',
                          )),
                      Text(
                        'Transacción Exitosa',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 42.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Es tu plata, simple',
                        style:
                            TextStyle(color: Colors.black87, fontSize: 36.sp),
                      ),
                    ],
                  ),
                ),
                RoundButton(
                  text: 'Aceptar',
                  onTap: () {
                    context.router.popUntilRouteWithName('HomeRoute');
                  },
                ),
                SizedBox(
                  height: 20.h + (ScreenUtil().bottomBarHeight / 2),
                )
              ]),
        ),
      ),
    )));
  }
}

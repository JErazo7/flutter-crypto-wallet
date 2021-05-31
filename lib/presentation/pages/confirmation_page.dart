import 'package:flutter_crypto_wallet/application/coin_convert/coin_convert_provider.dart';
import 'package:flutter_crypto_wallet/presentation/core/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

import '../../presentation/routes/router.gr.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);
  final _color = const Color(0XFFF3A00FF);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final state = watch(coinConvertNotifierProvider);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: true,
            brightness: Brightness.light,
            leading: IconButton(
              color: Colors.black,
              iconSize: 35.h,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
            title: Text('Vista previa del pedido',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold)),
          ),
          backgroundColor: Colors.white,
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 70.h),
                    child: Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        state.confirm!.conversion.toStringAsFixed(10) +
                            ' ' +
                            state.to!.symbol.toUpperCase(),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: _color,
                            fontSize: 56.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  const Divider(
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  _RowItem(title: 'Pagar con', subtitle: state.from!.name),
                  _RowItem(
                      title: 'Tipo de cambio',
                      // ignore: prefer_interpolation_to_compose_strings
                      subtitle: '1 ' +
                          state.from!.symbol.toUpperCase() +
                          ' = ' +
                          state.confirm!.rate.toStringAsFixed(10) +
                          ' ' +
                          state.to!.symbol.toUpperCase()),
                  const _RowItem(title: 'Tarifa de Belo', subtitle: '\$0.00'),
                  _RowItem(
                      title: 'Total',
                      // ignore: prefer_interpolation_to_compose_strings
                      subtitle: state.confirm!.coinTotal.toStringAsFixed(10) +
                          ' ' +
                          state.from!.symbol.toUpperCase() +
                          ' (\$' +
                          state.amount +
                          ')'),
                  Expanded(
                    child: SizedBox(
                      child: Container(),
                    ),
                  ),
                  RoundButton(
                    text: 'Convertir ahora',
                    onTap: () {
                      context.read(coinConvertNotifierProvider.notifier).save();
                      context.router.replace(const StatusRoute());
                    },
                  ),
                  SizedBox(
                    height: 20.h + (ScreenUtil().bottomBarHeight / 2),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _RowItem extends StatelessWidget {
  const _RowItem({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Text(title,
                maxLines: 1,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.normal)),
          ),
          Expanded(
            child: Text(subtitle,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.normal)),
          )
        ],
      ),
    );
  }
}

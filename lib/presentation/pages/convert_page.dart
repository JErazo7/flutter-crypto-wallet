import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:belo/application/coin_convert/coin_convert_notifier.dart';
import 'package:belo/domain/coin.dart';
import 'package:belo/presentation/core/utils.dart';
import 'package:belo/presentation/core/widgets/image_coin.dart';
import 'package:belo/presentation/core/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../presentation/routes/router.gr.dart';

import '../../providers.dart';
import 'portafolio_page.dart';

class ConvertPage extends StatefulWidget {
  ConvertPage({Key? key}) : super(key: key);

  @override
  _ConvertPageState createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  final _color = const Color(0XFFF3A00FF);

  late AnimationController animateController;

  @override
  Widget build(BuildContext context) {
    return ProviderListener<CoinConvertState>(
        provider: coinConvertNotifierProvider,
        onChange: (context, state) {
          if (state.isPreview) {
            context.router.push(const ConfirmationRoute());
          }
        },
        child: Consumer(builder: (context, watch, child) {
          final state = watch(coinConvertNotifierProvider);
          final msg1 = '${Utils.getPrice(state.from!.dollars!)} disponible';
          return state.isLoading
              ? Scaffold(
                  body: Center(
                    child: Container(
                        color: Colors.white,
                        child: const CircularProgressIndicator()),
                  ),
                )
              : Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    automaticallyImplyLeading: true,
                    brightness: Brightness.light,
                    leading: IconButton(
                      color: Colors.black,
                      iconSize: 45.h,
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                    title: Column(
                      children: [
                        Text('Convertir ${state.from!.name}',
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36.sp,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(msg1,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 32.sp,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white,
                  body: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 110.h),
                        BounceInLeft(
                          from: 50,
                          manualTrigger: true,
                          controller: (controller) =>
                              animateController = controller,
                          child: Text('\$${state.amount}',
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: _color,
                                  fontSize: 126.sp,
                                  fontWeight: FontWeight.normal)),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                            state.validation.fold(
                                () =>
                                    // ignore: prefer_interpolation_to_compose_strings
                                    'Tienes ' +
                                    Utils.getCoinAmount(state.from!.amount!,
                                        state.from!.symbol) +
                                    ' disponible.', (validation) {
                              animateController.repeat();
                              return validation.map(
                                  empty: (_) => 'Ingrese una cantidad mayor',
                                  invalid: (_) =>
                                      // ignore: prefer_interpolation_to_compose_strings
                                      'No tienes suficientes ' +
                                      state.from!.symbol.toUpperCase());
                            }),
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 32.sp,
                                fontWeight: FontWeight.normal)),
                        SizedBox(height: 110.h),
                        _ExchangeCoin(
                          from: state.from!,
                          to: state.to!,
                        ),
                        SizedBox(
                          height: 70.h,
                        ),
                        const _Keyboard(),
                        SizedBox(
                          height: 60.h,
                        ),
                        RoundButton(
                          text: 'Previsualizar Conversión',
                          onTap: () {
                            context
                                .read(coinConvertNotifierProvider.notifier)
                                .validate();
                          },
                        ),
                      ],
                    ),
                  ),
                );
        }));
  }
}

class _ExchangeCoin extends StatelessWidget {
  const _ExchangeCoin({Key? key, required this.from, required this.to})
      : super(key: key);

  final Coin from, to;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 2),
          borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 40.w),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              final state = context.read(coinConvertNotifierProvider);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PortafolioPage(
                            selected: state.from!,
                            coins: state.portafolio!,
                            isPortafolio: true,
                            oppositeCoin: state.to!,
                          )));
            },
            child: Row(
              children: [
                ImageCoin(
                  imageUrl: from.image,
                ),
                SizedBox(
                  width: 30.w,
                ),
                _CoinColum(
                  aligment: CrossAxisAlignment.start,
                  title: 'Desde',
                  subtitle: from.symbol,
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Container(),
            ),
          ),
          Container(
            height: 65.h,
            width: 65.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400, width: 2),
                borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.import_export,
              size: 35.h,
            ),
          ),
          Expanded(
            child: SizedBox(
              child: Container(),
            ),
          ),
          InkWell(
            onTap: () {
              final state = context.read(coinConvertNotifierProvider);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PortafolioPage(
                          isPortafolio: false,
                          selected: state.to!,
                          oppositeCoin: state.from!,
                          coins: state.all!)));
            },
            child: Row(
              children: [
                _CoinColum(
                  aligment: CrossAxisAlignment.end,
                  title: 'A',
                  subtitle: to.symbol,
                ),
                SizedBox(
                  width: 30.w,
                ),
                ImageCoin(
                  imageUrl: to.image,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CoinColum extends StatelessWidget {
  const _CoinColum(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.aligment})
      : super(key: key);

  final String title, subtitle;
  final CrossAxisAlignment aligment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Column(
        crossAxisAlignment: aligment,
        children: [
          Text(title,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.normal)),
          SizedBox(
            height: 5.h,
          ),
          Text(subtitle.toUpperCase(),
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
}

class _Keyboard extends StatelessWidget {
  const _Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Column(
        children: [
          const Expanded(
            child: _KeyboardRow(
              start: 1,
              end: 3,
            ),
          ),
          const Expanded(
            child: _KeyboardRow(
              start: 4,
              end: 6,
            ),
          ),
          const Expanded(
            child: _KeyboardRow(
              start: 7,
              end: 9,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context
                          .read(coinConvertNotifierProvider.notifier)
                          .onKeyboardTap('.');
                    },
                    child: Text('.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 66.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context
                          .read(coinConvertNotifierProvider.notifier)
                          .onKeyboardTap('0');
                    },
                    child: Text('0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 66.sp,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
                Expanded(
                    child: IconButton(
                        iconSize: 40.h,
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black87,
                        ),
                        onPressed: () {
                          context
                              .read(coinConvertNotifierProvider.notifier)
                              .onKeyboardDelete();
                        })),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _KeyboardRow extends StatelessWidget {
  const _KeyboardRow({Key? key, required this.start, required this.end})
      : super(key: key);
  final int start, end;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = start; i <= end; i++)
          Expanded(
            child: InkWell(
              onTap: () {
                context
                    .read(coinConvertNotifierProvider.notifier)
                    .onKeyboardTap(i.toString());
              },
              child: Text(i.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 66.sp,
                      fontWeight: FontWeight.normal)),
            ),
          ),
      ],
    );
  }
}

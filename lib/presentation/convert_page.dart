import 'package:belo/core/utils.dart';
import 'package:belo/domain/coin.dart';
import 'package:belo/presentation/widgets/image_coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../providers.dart';
import 'portafolio_page.dart';

class ConvertPage extends ConsumerWidget {
  const ConvertPage({Key? key}) : super(key: key);
  final _color = const Color(0XFFF3A00FF);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(coinConvertNotifierProvider);
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
                  Text('${Utils.getPrice(state.from!.dollars!)} disponible',
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
                  Text('\$${state.amount}',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: _color,
                          fontSize: 126.sp,
                          fontWeight: FontWeight.normal)),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text('''
Tienes ${state.from!.amount} ${state.from!.symbol.toUpperCase()} disponible.''',
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
                  Expanded(child: SizedBox(child: Container())),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ConvertPage()));
                    },
                    child: PhysicalModel(
                      shadowColor: Colors.white,
                      elevation: 4,
                      color: _color,
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        alignment: Alignment.center,
                        height: 80.h,
                        width: 650.w,
                        child: Text('Previsualizar Conversión',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().bottomBarHeight,
                  )
                ],
              ),
            ),
          );
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
          border: Border.all(color: Colors.grey.shade300, width: 3.w),
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
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400, width: 3.w),
                borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              icon: Icon(
                Icons.import_export,
                size: 35.h,
              ),
              onPressed: () {},
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
                  fontSize: 32.sp,
                  fontWeight: FontWeight.normal)),
          SizedBox(
            height: 5.h,
          ),
          Text(subtitle.toUpperCase(),
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 36.sp,
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
          const _KeyboardRow(
            start: 1,
            end: 3,
          ),
          Expanded(child: SizedBox(child: Container())),
          const _KeyboardRow(
            start: 4,
            end: 6,
          ),
          Expanded(child: SizedBox(child: Container())),
          const _KeyboardRow(
            start: 7,
            end: 9,
          ),
          Expanded(child: SizedBox(child: Container())),
          Row(
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
                            .onRemove();
                      })),
            ],
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

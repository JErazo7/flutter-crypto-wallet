import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crypto_wallet/application/coin_list/coin_list_notifier.dart';
import 'package:flutter_crypto_wallet/application/coin_list/coin_list_provider.dart';
import 'package:flutter_crypto_wallet/domain/coin.dart';
import 'package:flutter_crypto_wallet/presentation/core/widgets/coin_item.dart';
import 'package:flutter_crypto_wallet/presentation/core/widgets/critical_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../presentation/routes/router.gr.dart';
import '../core/utils.dart';

class BalancePage extends ConsumerWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(coinNotifierProvider);
    return state.map(
        initial: (_) {
          return Container();
        },
        loading: (_) => const Center(child: CircularProgressIndicator()),
        loaded: (e) => _SuccessContent(loaded: e),
        failure: (e) => CriticalFailure(
            color: Colors.white,
            onRetry: () {
              context.read(coinNotifierProvider.notifier).getCoins();
            }));
  }
}

class _SuccessContent extends StatefulWidget {
  const _SuccessContent({Key? key, required Loaded loaded})
      : _loaded = loaded,
        super(key: key);

  final Loaded _loaded;
  @override
  __SuccessContentState createState() => __SuccessContentState();
}

class __SuccessContentState extends State<_SuccessContent> {
  final _color = const Color(0XFFF3A00FF);
  bool visibility = true;

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    final isDesktop = deviceType == DeviceScreenType.desktop;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: _color,
          elevation: 0,
          centerTitle: true,
          brightness: Brightness.dark,
          title: AnimatedCrossFade(
            crossFadeState: visibility
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 300),
            alignment: Alignment.centerLeft,
            firstCurve: Curves.easeInCirc,
            secondChild: Text(Utils.getPrice(widget._loaded.totalDollars),
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 46.sp,
                    fontWeight: FontWeight.bold)),
            firstChild: Text('Mi Portafolio',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 46.sp,
                    fontWeight: FontWeight.bold)),
          )),
      backgroundColor: _color,
      body: isDesktop && ScreenUtil().orientation == Orientation.landscape
          ? Row(
              children: [
                _HeaderSection(
                  isDesktop: true,
                  total: Utils.getPrice(widget._loaded.totalDollars),
                ),
                Expanded(child: _BalanceSection(coins: widget._loaded.coins))
              ],
            )
          : Stack(
              children: [
                _HeaderSection(
                  total: Utils.getPrice(widget._loaded.totalDollars),
                ),
                NotificationListener<DraggableScrollableNotification>(
                    onNotification:
                        (DraggableScrollableNotification dsNotification) {
                      if (visibility && dsNotification.extent >= 0.75) {
                        setState(() {
                          visibility = false;
                        });
                      } else if (!visibility && dsNotification.extent <= 0.75) {
                        setState(() {
                          visibility = true;
                        });
                      }
                      return true;
                    },
                    child: DraggableScrollableSheet(
                        minChildSize: 0.45,
                        maxChildSize: 1,
                        initialChildSize: 0.45,
                        builder: (context, scrollController) {
                          return _BalanceSection(
                              scrollController: scrollController,
                              coins: widget._loaded.coins);
                        }))
              ],
            ),
    );
  }
}

class _BalanceSection extends StatelessWidget {
  const _BalanceSection(
      {Key? key, ScrollController? scrollController, required List<Coin> coins})
      : _scrollController = scrollController,
        _coins = coins,
        super(key: key);

  final ScrollController? _scrollController;
  final List<Coin> _coins;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      child: Container(
        color: Colors.white,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 20.h),
          controller: _scrollController,
          itemBuilder: (context, index) {
            return CoinItem(
              coin: _coins[index],
              isPortafolio: true,
            );
          },
          itemCount: _coins.length,
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({Key? key, required this.total, this.isDesktop = false})
      : super(key: key);
  final String total;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElasticIn(
          child: SizedBox(
            height: isDesktop ? 1000.h : 500.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Lottie.asset(
                  'assets/animation.json',
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('En mi Billetera',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22.sp,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 300.w,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(total,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 46.sp,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            context.router.push(ConvertRoute());
          },
          child: PhysicalModel(
            shadowColor: Colors.white,
            elevation: 4,
            color: const Color(0XFFF01FFB2),
            borderRadius: BorderRadius.circular(25),
            child: Container(
              alignment: Alignment.center,
              height: 70.h,
              width: 600.w,
              constraints: const BoxConstraints(maxWidth: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sync_alt,
                    color: const Color(0XFFF3A00FF),
                    size: 35.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text('Convertir',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0XFFF3A00FF),
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

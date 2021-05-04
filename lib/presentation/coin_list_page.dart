import 'package:belo/domain/coin.dart';
import 'package:belo/presentation/widgets/coin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../providers.dart';
import 'widgets/critical_failure.dart';

class CoinListPage extends StatelessWidget {
  const CoinListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Consumer(builder: (context, watch, child) {
            final state = watch(coinNotifierProvider);
            return state.map(
                initial: (_) {
                  return Container();
                },
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loaded: (e) => SuccesContent(coins: e.coins),
                failure: (e) => CriticalFailure(
                      onRetry: () {
                        context.read(coinNotifierProvider.notifier).getCoins();
                      },
                    ));
          }),
        ));
  }
}

class SuccesContent extends StatelessWidget {
  const SuccesContent({Key? key, required List<Coin> coins})
      : _coins = coins,
        super(key: key);
  final List<Coin> _coins;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          toolbarHeight: 140.h,
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/belo.png',
            height: 150.h,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return CoinItem(
            height: 120.h,
            coin: _coins[index],
          );
        }, childCount: _coins.length))
      ],
    );
  }
}

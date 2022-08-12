import 'package:flutter_crypto_wallet/application/coin_list/coin_list_provider.dart';
import 'package:flutter_crypto_wallet/domain/coin.dart';
import 'package:flutter_crypto_wallet/presentation/core/widgets/coin_item.dart';
import 'package:flutter_crypto_wallet/presentation/core/widgets/critical_failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinListPage extends StatelessWidget {
  const CoinListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Consumer(builder: (context, ref, child) {
            final state = ref.watch(coinNotifierProvider);
            return state.map(
                initial: (_) {
                  return Container();
                },
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loaded: (e) => SuccesContent(coins: e.coins),
                failure: (e) => CriticalFailure(
                      onRetry: () {
                        ref.read(coinNotifierProvider.notifier).getCoins();
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
          centerTitle: true,
          title: Image.asset(
            'assets/belo.png',
            height: 150.h,
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return CoinItem(
            coin: _coins[index],
          );
        }, childCount: _coins.length))
      ],
    );
  }
}

import 'package:flutter_crypto_wallet/application/coin_convert/coin_convert_provider.dart';
import 'package:flutter_crypto_wallet/domain/coin.dart';
import 'package:flutter_crypto_wallet/presentation/core/widgets/coin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortafolioPage extends ConsumerWidget {
  const PortafolioPage(
      {Key? key,
      required this.coins,
      required this.selected,
      required this.isPortafolio,
      required this.oppositeCoin})
      : super(key: key);

  final List<Coin> coins;
  final Coin oppositeCoin;
  final Coin selected;
  final bool isPortafolio;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100.h,
        automaticallyImplyLeading: true,
        leading: IconButton(
          color: Colors.black,
          iconSize: 35.h,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Seleccione un asset',
            maxLines: 1,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 36.sp,
                fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        height: 1.sh - ScreenUtil().statusBarHeight - 100.h,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Visibility(
              visible: selected != coins[index] && oppositeCoin != coins[index],
              child: CoinItem(
                onTap: () {
                  if (isPortafolio) {
                    ref
                        .read(coinConvertNotifierProvider.notifier)
                        .fromChanged(coins[index]);
                  } else {
                    ref
                        .read(coinConvertNotifierProvider.notifier)
                        .toChanged(coins[index]);
                  }
                  Navigator.pop(context);
                },
                coin: coins[index],
                isPortafolio: isPortafolio,
              ),
            );
          },
          itemCount: coins.length,
        ),
      ),
    );
  }
}

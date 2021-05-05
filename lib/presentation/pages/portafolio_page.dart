import 'package:belo/domain/coin.dart';
import 'package:belo/presentation/core/widgets/coin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers.dart';

class PortafolioPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100.h,
        automaticallyImplyLeading: true,
        brightness: Brightness.light,
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
                    context
                        .read(coinConvertNotifierProvider.notifier)
                        .fromChanged(coins[index]);
                  } else {
                    context
                        .read(coinConvertNotifierProvider.notifier)
                        .toChanged(coins[index]);
                  }
                  Navigator.pop(context);
                },
                coin: coins[index],
                height: isPortafolio ? 100.h : 120.h,
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

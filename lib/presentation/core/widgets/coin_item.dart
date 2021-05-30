import 'package:belo/domain/coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils.dart';
import 'image_coin.dart';

class CoinItem extends StatelessWidget {
  const CoinItem(
      {Key? key, required Coin coin, isPortafolio = false, VoidCallback? onTap})
      : _coin = coin,
        _onTap = onTap,
        _isPortafolio = isPortafolio,
        super(key: key);

  final Coin _coin;
  final bool _isPortafolio;
  final VoidCallback? _onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.grey.shade200,
      ))),
      child: ListTile(
        onTap: _onTap,
        leading: ImageCoin(
          imageUrl: _coin.image,
        ),
        title: Text(
          _coin.name,
          style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w500),
        ),
        subtitle: !_isPortafolio
            ? Text(_coin.symbol, style: TextStyle(fontSize: 28.sp))
            : null,
        trailing: FittedBox(
          fit: BoxFit.scaleDown,
          child: !_isPortafolio
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$${_coin.currentPrice}',
                        style: TextStyle(
                            fontSize: 28.sp, fontWeight: FontWeight.w500)),
                    _PriceVariation(price: _coin.priceChange),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(Utils.getPrice(_coin.dollars!),
                        style: TextStyle(
                            fontSize: 28.sp, fontWeight: FontWeight.w500)),
                    Text(Utils.getCoinAmount(_coin.amount!, _coin.symbol),
                        style: TextStyle(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54)),
                  ],
                ),
        ),
      ),
    );
  }
}

class _PriceVariation extends StatelessWidget {
  const _PriceVariation({Key? key, required double price})
      : _price = price,
        super(key: key);
  final double _price;

  @override
  Widget build(BuildContext context) {
    return Text(Utils.getPriceChange(_price),
        textAlign: TextAlign.end,
        style: TextStyle(
            fontSize: 28.sp,
            fontWeight: FontWeight.w500,
            color: _price >= 0 ? Colors.green : Colors.redAccent));
  }
}

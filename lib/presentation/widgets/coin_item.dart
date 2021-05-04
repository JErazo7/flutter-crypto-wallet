import 'package:belo/core/utils.dart';
import 'package:belo/domain/coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoinItem extends StatelessWidget {
  const CoinItem({Key? key, required Coin coin})
      : _coin = coin,
        super(key: key);

  final Coin _coin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.grey.shade200,
      ))),
      child: ListTile(
        leading: SizedBox(
          height: 65.h,
          width: 65.h,
          child: PhysicalModel(
            shape: BoxShape.circle,
            color: Colors.white,
            clipBehavior: Clip.hardEdge,
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Image.network(
                _coin.image,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        title: Text(
          _coin.name,
          style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(_coin.symbol, style: TextStyle(fontSize: 28.sp)),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('\$${_coin.currentPrice}',
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500)),
            _PriceVariation(price: _coin.priceChange),
          ],
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

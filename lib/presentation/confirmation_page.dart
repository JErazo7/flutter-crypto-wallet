import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/round_button.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);
  final _color = const Color(0XFFF3A00FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 70.h),
              child: Text('0.03343434 ETH',
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
            const _RowItem(title: 'Pagar con', subtitle: 'Bitcoin'),
            const _RowItem(
                title: 'Tipo de cambio', subtitle: '1 BTC = 16.35363632 ETH'),
            const _RowItem(title: 'Tarifa de Belo', subtitle: '\$0.00'),
            const _RowItem(title: 'Total', subtitle: '0.000164 BTC (\$0.00)'),
            Expanded(
              child: SizedBox(
                child: Container(),
              ),
            ),
            RoundButton(
              text: 'Convertir ahora',
              onTap: () {},
            ),
            SizedBox(
              height: 20.h + (ScreenUtil().bottomBarHeight / 2),
            )
          ],
        ),
      ),
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
          SizedBox(
            width: 250.w,
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

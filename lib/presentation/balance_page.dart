import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0XFFF3A00FF),
          elevation: 0,
          brightness: Brightness.dark,
          title: Visibility(
            visible: false,
            child: Text('\$20.00',
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.sp,
                    fontWeight: FontWeight.bold)),
          )),
      backgroundColor: const Color(0XFFF3A00FF),
      body: Stack(
        children: [
          SizedBox(
            height: 600.h,
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
                          child: Text('\$20.00',
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
          DraggableScrollableSheet(
              minChildSize: 0.45,
              maxChildSize: 0.95,
              initialChildSize: 0.45,
              builder: (context, scrollController) {
                return BalanceSection(scrollController: scrollController);
              })
        ],
      ),
    );
  }
}

class BalanceSection extends StatelessWidget {
  const BalanceSection({Key? key, required ScrollController scrollController})
      : _scrollController = scrollController,
        super(key: key);

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      child: Container(
        color: Colors.white,
        child: ListView.builder(
          controller: _scrollController,
          itemBuilder: (context, item) {
            return Container();
          },
          itemCount: 3,
        ),
      ),
    );
  }
}

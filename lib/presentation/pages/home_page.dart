import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'balance_page.dart';
import 'coin_list_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Widget> _pages = [const BalancePage(), const CoinListPage()];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pos = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var deviceType = getDeviceType(size);
    final isDesktop = (deviceType == DeviceScreenType.desktop) &&
        ScreenUtil().orientation == Orientation.landscape;
    return Scaffold(
      bottomNavigationBar: isDesktop
          ? null
          : _BottomNavigationBar(
              onTap: (pos) {
                setState(() {
                  _pos = pos;
                });
              },
            ),
      backgroundColor: const Color(0XFFF3A00FF),
      body: isDesktop
          ? CollapsibleSidebar(
              items: [
                CollapsibleItem(
                  text: 'Mis balances',
                  icon: Icons.home_filled,
                  onPressed: () {
                    setState(() {
                      _pos = 0;
                    });
                  },
                  isSelected: _pos == 0,
                ),
                CollapsibleItem(
                    text: 'Precios',
                    icon: Icons.equalizer,
                    onPressed: () {
                      setState(() {
                        _pos = 1;
                      });
                    },
                    isSelected: _pos == 1),
              ],
              body: Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: widget._pages[_pos],
              ),
              avatarImg: const AssetImage('assets/profile.jpeg'),
              backgroundColor: Colors.white,
              title: 'Josue Erazo',
              selectedIconColor: const Color(0XFFF01FFB2),
              selectedTextColor: const Color(0XFFF01FFB2),
              unselectedTextColor: Colors.black87,
              textStyle: TextStyle(fontSize: 26.sp),
              titleStyle: TextStyle(
                  fontSize: 36.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
              toggleTitleStyle:
                  TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
            )
          : widget._pages[_pos],
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar(
      {Key? key, required this.onTap, this.initialPage = 0})
      : super(key: key);

  final Function(int) onTap;
  final int initialPage;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        color: Colors.white,
        backgroundColor: Colors.white,
        initialActiveIndex: initialPage,
        items: [
          const TabItem(icon: Icon(Icons.home_filled)),
          const TabItem(
            icon: Icon(Icons.equalizer),
          )
        ],
        onTap: onTap);
  }
}

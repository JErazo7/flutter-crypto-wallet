import 'package:belo/presentation/coin_list_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'balance_page.dart';

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
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        backgroundColor: Colors.white,
        initialActiveIndex: _pos,
        items: [
          const TabItem(icon: Icon(Icons.home_filled)),
          const TabItem(icon: Icon(Icons.sync_alt)),
          const TabItem(icon: Icon(Icons.equalizer))
        ],
        onTap: (index) {
          setState(() {
            _pos = index;
          });
        },
      ),
      body: widget._pages[_pos],
    );
  }
}

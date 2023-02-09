import 'package:flutter/material.dart';
import 'package:slider/Cart.dart';
import 'package:slider/HomePage.dart';

import 'BottomNav.dart';
import 'Profile.dart';
import 'SearchPage.dart';

class FifthPage extends StatelessWidget {
  FifthPage({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final _pages = [
    const HomePage(),
    const SearchPage(),
    const Cart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext context, int updated, _) {
              return _pages[updated];
            }),
      ),
    );
  }
}

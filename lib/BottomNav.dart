import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:slider/fifthpage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: FifthPage.selectedIndexNotifier,
        builder: (BuildContext ctx, int updated, Widget? _) {
          return Container(
            height: 90,
            width: 180,
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: GNav(
                gap: 8,
                backgroundColor: Colors.white,
                color: Colors.black,
                activeColor: Colors.black,
                tabBackgroundColor: const Color(0xffC6AB59),
                onTabChange: (newIndex) {
                  FifthPage.selectedIndexNotifier.value = newIndex;
                },
                padding: const EdgeInsets.all(16),
                tabs: [
                  GButton(
                    leading: Image.asset(
                      'assets/home.png',
                      width: 20,
                      height: 20,
                    ),
                    icon: Icons.home,
                    text: "home",
                  ),
                  GButton(
                    leading: Image.asset(
                      'assets/search.png',
                      width: 20,
                      height: 20,
                    ),
                    icon: Icons.search,
                    text: "Search",
                  ),
                  GButton(
                    leading: Image.asset(
                      'assets/bag.png',
                      width: 20,
                      height: 20,
                    ),
                    icon: Icons.shopping_cart_sharp,
                    text: "cart",
                  ),
                  GButton(
                    leading: Image.asset(
                      'assets/person.png',
                      width: 20,
                      height: 20,
                    ),
                    icon: Icons.person,
                    text: "User",
                  )
                ],
              ),
            ),
          );
        });
  }
}

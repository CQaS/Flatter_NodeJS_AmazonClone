import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/account/screens/account_screen.dart';
import 'package:amazon_clone/features/home/screens/home_screen.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BottonBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottonBar({Key? key}) : super(key: key);

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int _page = 0;
  double btnBarW = 42;
  double btnBarBorderW = 5;

  List<Widget> paginas = [
    const HomeScreen(),
    const AccountScreen(),
    const Center(
      child: Text('Cart_Page'),
    ),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: paginas[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: btnBarW,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: btnBarBorderW,
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: btnBarW,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: btnBarBorderW,
                  ),
                ),
              ),
              child: const Icon(
                Icons.person_outline,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: btnBarW,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: btnBarBorderW,
                  ),
                ),
              ),
              child: Badge(
                badgeContent: const Text('2'),
                badgeStyle: BadgeStyle(
                  badgeColor: Colors.blue,
                ),
                child: const Icon(Icons.shopping_cart_outlined),
              ),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}

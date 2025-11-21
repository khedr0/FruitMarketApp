import 'package:flutter/material.dart';
import 'package:fruit_market/screens/nav_bar_screens/oreders_screen.dart';

import '../screens/nav_bar_screens/basket_flow/basketScreen.dart';
import '../screens/nav_bar_screens/basket_flow/checkout_flow_screen.dart';
import '../screens/nav_bar_screens/homeScreen.dart';
import '../screens/nav_bar_screens/setting_screen.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void _onTabTapped(int index) {
    if (index == selectedIndex) {
      // لو ضغطت نفس التاب يعمل pop لأعلى شاشة
      _navigatorKeys[index].currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  Widget _buildTabNavigator(GlobalKey<NavigatorState> key, Widget child) {
    return Navigator(
      key: key,
      onGenerateRoute: (_) => MaterialPageRoute(
        builder: (_) => child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[selectedIndex].currentState!.maybePop();

        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            _buildTabNavigator(_navigatorKeys[0], const HomeScreen()),
            _buildTabNavigator(_navigatorKeys[1], const OredersScreen()),
            _buildTabNavigator(_navigatorKeys[2], BasketScreen(
              onCheckout: () {
                _navigatorKeys[2].currentState!.push(
                      MaterialPageRoute(builder: (_) => CheckoutFlowScreen()),
                    );
              },
            )),
            _buildTabNavigator(_navigatorKeys[4], const HomeScreen()),
            _buildTabNavigator(_navigatorKeys[3], const SettingsScreen()),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            backgroundColor: const Color(0xFF2D5F4F),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset(
                    selectedIndex == 0
                        ? "assets/SelectedHome.png"
                        : "assets/home.png",
                    height: 40,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  selectedIndex == 1
                      ? "assets/SelectedOrders.png"
                      : "assets/Orders.png",
                  height: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  selectedIndex == 2
                      ? "assets/SelectedBasket.png"
                      : "assets/Basket.png",
                  height: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  selectedIndex == 3
                      ? "assets/SelectedFavorite.png"
                      : "assets/Favorite.png",
                  height: 40,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    selectedIndex == 4
                        ? "assets/SelectedMore.png"
                        : "assets/More.png",
                    height: 40,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

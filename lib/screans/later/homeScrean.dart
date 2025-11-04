import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> pages = [
    Center(child: Text('Home')),
    Center(child: Text('Orders')),
    Center(child: Text('Basket')),
    Center(child: Text('Favorite')),
    Center(child: Text('More')),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[selectedIndex],
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
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Image.asset(
                      selectedIndex == 0
                          ? ("assets/SelectedHome.png")
                          : "assets/home.png",
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    selectedIndex == 1
                        ? "assets/SelectedOrders.png"
                        : "assets/Orders.png",
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    selectedIndex == 2
                        ? "assets/SelectedBasket.png"
                        : "assets/Basket.png",
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    selectedIndex == 3
                        ? "assets/SelectedFavorite.png"
                        : "assets/Favorite.png",
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
                    ),
                  ),
                  label: '',
                ),
              ],
            )));
  }
}

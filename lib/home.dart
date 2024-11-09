import 'package:ecommerce/scr1.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.search_outlined)],
        
      ),
      body: getScreenView(),
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none), label: 'Notifications'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: 'User'),
          ]),
    );
  }

  Widget getScreenView() {
    if (currentIndex == 0) {
      return const ScreenOneView();
    } else if (currentIndex == 1) {
      return const ScreenOneView();
    } else if (currentIndex == 2) {
      return const ScreenOneView();
    } else {
      return const ScreenOneView();
    }
  }
}
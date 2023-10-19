import 'package:flutter/material.dart';
import 'package:shoes_store/pages/cartpage.dart';
import 'package:shoes_store/pages/intropage.dart';
import 'package:shoes_store/pages/profilepage.dart';
import 'package:shoes_store/pages/shoppage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const ShopPage(),
      const CartPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shoes Store',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        leading: BackButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const IntroPage()));
          },
        ),
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
          height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home',),
            NavigationDestination(icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
            NavigationDestination(icon: Icon(Icons.supervised_user_circle_rounded), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

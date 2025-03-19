import 'package:ecom_ui/components/bottom_nav.dart';
import 'package:ecom_ui/components/my_drawer/menu_icon.dart';
import 'package:ecom_ui/components/my_drawer/my_drawer.dart';
import 'package:ecom_ui/pages/cart_page.dart';
import 'package:ecom_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // Bottom nav bar
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigateBottomNav(index),
      ),

      // App bar
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.2,
        leading: MenuIcon(),
        backgroundColor: Colors.transparent,
      ),

      // Drawer
      drawer: MyDrawer(),

      // Body
      body: _pages[_selectedIndex],
    );
  }
}

import 'package:ecom_ui/models/cart.dart';
import 'package:ecom_ui/pages/cart_page.dart';
import 'package:ecom_ui/pages/home_page.dart';
import 'package:ecom_ui/pages/intro_page.dart';
import 'package:ecom_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: IntroPage(),
            routes: {
              '/home': (context) => const HomePage(),
              '/shop': (context) => const ShopPage(),
              '/cart': (context) => const CartPage(),
            },
          ),
    );
  }
}

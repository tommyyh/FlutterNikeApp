import 'package:ecom_ui/components/my_drawer/drawer_link.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 65),

              // Logo
              Image.asset(
                'assets/images/logo.png',
                height: 48,
                color: Colors.white,
              ),

              SizedBox(height: 80),

              // Links
              DrawerLink(title: 'Home', icon: Icons.home),
              DrawerLink(title: 'About', icon: Icons.info),
            ],
          ),

          // Logout
          Column(
            children: [
              DrawerLink(title: 'Logout', icon: Icons.logout),
              SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}

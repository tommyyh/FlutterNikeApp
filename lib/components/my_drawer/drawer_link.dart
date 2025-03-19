import 'package:flutter/material.dart';

class DrawerLink extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerLink({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

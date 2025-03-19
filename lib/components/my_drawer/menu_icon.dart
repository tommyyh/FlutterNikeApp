import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 24, height: 2, color: Colors.black),

              const SizedBox(height: 6),

              Container(width: 33, height: 2, color: Colors.black),
            ],
          ),
        );
      },
    );
  }
}

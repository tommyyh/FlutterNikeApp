import 'package:ecom_ui/components/cart_page/cart_item.dart';
import 'package:ecom_ui/models/cart.dart';
import 'package:ecom_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                const Text(
                  'My cart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                const SizedBox(height: 10),

                // Cart items
                Expanded(
                  child: ListView.builder(
                    itemCount: value.getCart().length,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getCart()[index];

                      return CartItem(shoe: shoe);
                    },
                  ),
                ),
              ],
            ),
          ),
    );
  }
}

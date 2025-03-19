import 'package:ecom_ui/models/cart.dart';
import 'package:ecom_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoeDetails extends StatelessWidget {
  final Shoe shoe;

  const ShoeDetails({super.key, required this.shoe});

  void addShoeToCart(BuildContext context) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    // Alert the user -> Success
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text('Successfully added!'),
            content: Text('Check your cart'),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Shoe name
              Text(
                shoe.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              // Price
              Text(
                '\$${shoe.price}',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
            ],
          ),

          // Plus button
          GestureDetector(
            onTap: () => addShoeToCart(context),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Icon(Icons.add, color: Colors.grey[100]),
            ),
          ),
        ],
      ),
    );
  }
}

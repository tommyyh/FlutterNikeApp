import 'package:ecom_ui/models/cart.dart';
import 'package:ecom_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  void removeItemFromCart(BuildContext context) {
    Provider.of<Cart>(context, listen: false).removeFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Text('\$${shoe.price}'),
        trailing: Container(
          decoration: BoxDecoration(
            color: Colors.red[300],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: IconButton(
            onPressed: () => removeItemFromCart(context),
            color: Colors.white,
            icon: Icon(Icons.playlist_remove_sharp),
          ),
        ),
      ),
    );
  }
}

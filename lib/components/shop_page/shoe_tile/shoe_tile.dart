import 'package:ecom_ui/components/shop_page/shoe_tile/shoe_details.dart';
import 'package:flutter/material.dart';
import 'package:ecom_ui/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;

  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),

          Column(
            children: [
              // Description
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Text(
                  shoe.description,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),

              // Price + details
              ShoeDetails(shoe: shoe),
            ],
          ),
        ],
      ),
    );
  }
}

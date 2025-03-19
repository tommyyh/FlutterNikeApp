import 'package:ecom_ui/components/shop_page/my_search_bar.dart';
import 'package:ecom_ui/components/shop_page/shoe_tile/shoe_tile.dart';
import 'package:ecom_ui/models/cart.dart';
import 'package:ecom_ui/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:
          (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                // Search bar
                MySearchBar(),

                // Message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    'Everyone flies... some fly longer than others',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),

                // Hot picks
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hot Picks 🔥',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Shoe list shop
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.getShoeList().length,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoeList()[index];

                      return ShoeTile(shoe: shoe);
                    },
                  ),
                ),

                // Space at the end
                const SizedBox(height: 63),
              ],
            ),
          ),
    );
  }
}

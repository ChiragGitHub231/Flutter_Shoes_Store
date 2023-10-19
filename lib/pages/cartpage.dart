import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_store/models/cart.dart';
import 'package:shoes_store/models/shoe.dart';
import 'package:shoes_store/components/cartitem.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                  itemBuilder: (context, index){
                // get individual shoe
                Shoe individualShoe = value.getUserCart()[index];

                // return the cart item
                return CartItem(shoe: individualShoe);
              })
            ),
          ],
        ),
      ),
    );
  }
}

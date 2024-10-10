import 'package:ecommercepage/component/cart_item.dart';
import 'package:ecommercepage/component/models/cart.dart';
import 'package:ecommercepage/component/models/phones.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            // get individual phones
                            Phones individualPhones =
                                value.getUserCart()[index];
                            //return the cart item
                            return CartItem(phones: individualPhones);
                          }))
                ],
              ),
            ));
  }
}

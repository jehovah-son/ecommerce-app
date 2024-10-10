// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommercepage/component/models/phones.dart';
import 'package:ecommercepage/component/phone_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
// add phone to cart
  void addPhoneToCart(Phones phone) {
    Provider.of<Cart>(context, listen: false).addItemToCart(phone);

// alert the user phones successfully added
    showDialog(
      
        context: context,
        builder: (context) => AlertDialog(
              title: Text('successfully added!'),
              content: Text('check cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Container(
              child: Column(
                children: [
                  // search for
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Search'),
                        Icon(Icons.search),
                      ],
                    ),
                  ),

                  // message
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text('everyone flies...some fly longer than others'),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  // phones avaiable
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hot Deals🔥',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Text(
                          'see all',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Expanded(
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            //get a phone from shoplist
                            Phones phones = value.getPhoneList()[index];
                            //return phone
                            return PhoneTile(
                              phones: phones,
                              onTap: () => addPhoneToCart(phones),
                            );
                          })),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 10, left: 10),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ));
  }
}

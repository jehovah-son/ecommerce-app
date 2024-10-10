import 'package:ecommercepage/component/models/cart.dart';
import 'package:ecommercepage/component/models/phones.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Phones phones;
  CartItem({super.key, required this.phones});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove an icons 
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.phones);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.brown[200],borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(widget.phones.imagesPath),
        title: Text(widget.phones.name),
        subtitle: Text(widget.phones.price),
        trailing: IconButton(onPressed: removeItemFromCart , icon: Icon(Icons.delete)),
      ),
    );
  }
}

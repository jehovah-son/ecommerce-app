// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommercepage/component/models/phones.dart';
import 'package:flutter/material.dart';

class PhoneTile extends StatelessWidget {
  Phones phones;
  void Function()? onTap;
  PhoneTile({super.key, required this.phones,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 227,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //phone
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                phones.imagesPath,
                height: 300,
              )),
          
          //description
          Text(
            phones.description,
            style: TextStyle(color: Colors.grey[700]),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(phones.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 5,),
                    Text('\#${phones.price}', style: TextStyle(color: Colors.grey[700]),),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(17),
                      decoration: BoxDecoration(
                          color: Colors.brown[400],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          )
          // button to add
        ],
      ),
    );
  }
}

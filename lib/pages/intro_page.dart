// ignore_for_file: prefer_const_constructors

import 'package:ecommercepage/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.all(40),
              child: Image.asset(
                'images/success.png',
                height: 200,
              ),
            ),

            // Title
            SizedBox(
              height: 40,
            ),
            Text(
              'Max gagdet',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            //SubTitle
            Text(
              'Your trusted plug for quality gadgets',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              
            ),
            Text(
              'We buy',
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            Text(
              'We sell',
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            Text(
              'we swap',
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
            SizedBox(
              height: 48,
            ),
            // shop now
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ShopProduct extends StatelessWidget {
   ShopProduct({super.key,
     required this.productImage,
     required this.productTitle,
     required this.productPrice});

   final String productImage;
   final String productTitle;
   final String productPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
        child: Column(
          children: [
            Image.asset(productImage, fit: BoxFit.fitWidth,),
            Text(productTitle),
            Text(productPrice)
            
          ],
        ),
      )

    );
  }
}

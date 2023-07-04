import 'package:flutter/material.dart';

import 'product_card.dart';

class ProductList extends StatelessWidget {
ProductList(this.images);
List<String> images;
  @override

   /* TODO receive the list of products here ,
        we receive the list in Constructor  */

  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context , index){

          return ShopProduct(
            productImage: images[index],
            productTitle: "Doll No 1",
            productPrice: "Rs 2000",
          );
        }
    );
  }
}

import 'package:ecommerce_app/feature/shop/presentation/product_card.dart';
import 'package:ecommerce_app/feature/shop/presentation/product_list.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
   ShopPage({super.key});

  List<String> dollImage= [
    'assets/images/chocolate_images/choc1.png',
    'assets/images/dolls_images/doll2.png',
    'assets/images/dolls_images/doll3.png',
    'assets/images/dolls_images/doll4.png',
    'assets/images/dolls_images/doll5.png',
    'assets/images/dolls_images/doll6.png',
    'assets/images/dolls_images/doll7.png',
    'assets/images/dolls_images/doll8.png',
    'assets/images/dolls_images/doll9.png',
    'assets/images/dolls_images/doll10.png',
  ];

  List<String> chocolateImage= [
    'assets/images/chocolate_images/choc1.png',
    'assets/images/chocolate_images/choc2.png',
    'assets/images/chocolate_images/choc3.png',
    'assets/images/chocolate_images/choc4.png',
    'assets/images/chocolate_images/choc5.png',
    'assets/images/chocolate_images/choc6.png',
    'assets/images/chocolate_images/choc7.png',
    'assets/images/chocolate_images/choc8.png',
    'assets/images/chocolate_images/choc9.png',
    'assets/images/chocolate_images/choc10.png',
  ];

  List<String> flowerImage = [
    'assets/images/flower_images/flower1.png',
    'assets/images/flower_images/flower2.png',
    'assets/images/flower_images/flower3.png',
    'assets/images/flower_images/flower4.png',
    'assets/images/flower_images/flower5.png',
    'assets/images/flower_images/flower6.png',
    'assets/images/flower_images/flower7.png',
    'assets/images/flower_images/flower8.png',
    'assets/images/flower_images/flower9.png',
    'assets/images/flower_images/flower10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
        length: 3 ,
        child: Scaffold(
          resizeToAvoidBottomInset : false,
          appBar: AppBar(title: Text("Shop Page"),),

          body: Column(
            children: [
              /* length gives the number of tabs that can be opened in the tab bar */
              TabBar(
                labelColor: Colors.black,
                  tabs: [
                    Tab(text: "Dolls" , icon: Icon(Icons.ac_unit),),
                    Tab(text: "Chocoloates" , icon: Icon(Icons.chair_rounded),),
                    Tab(text: "Flowers", icon: Icon(Icons.camera),),

              ]
              ),
              /* tab bar gives the number of tabs  */
              Expanded(
                child: TabBarView(
                    children: [
                     /*  TODO 1. pass the list of dolls here*/
                     ProductList(dollImage),
                      /*  TODO 2. pass the list of chocolates here*/

                      ProductList(chocolateImage),
                      /*  TODO 3. pass the list of flowers here*/

                      ProductList(flowerImage),
                    ]),
              )

            ],
          ) ,
        )
    );
  }
}


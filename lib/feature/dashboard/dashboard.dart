import 'package:ecommerce_app/feature/cart/presentation/cart_page.dart';
import 'package:ecommerce_app/feature/home/presentation/home_page.dart';
import 'package:ecommerce_app/feature/profile/presentation/profile_page.dart';
import 'package:ecommerce_app/feature/shop/presentation/shop_page.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentPageNumber=0;
  List <Widget> pages = [
    HomePage(),
    ShopPage(),
    CartPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages[currentPageNumber] ,

      bottomNavigationBar: BottomNavigationBar(currentIndex: currentPageNumber,
        type: BottomNavigationBarType.fixed  ,
        onTap: (int index){
        setState(() {
          currentPageNumber = index;
        });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.blueGrey,),label: "HOME", backgroundColor: Colors.redAccent ),
        BottomNavigationBarItem(icon: Icon(Icons.shop , color: Colors.blueGrey,),label: "SHOP" , backgroundColor: Colors.redAccent),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard, color: Colors.blueGrey,),label: "CART" , backgroundColor: Colors.redAccent),
        BottomNavigationBarItem(icon: Icon(Icons.person , color: Colors.blueGrey,),label: "PROFILE" , backgroundColor: Colors.redAccent),

      ],),
    );
  }
}

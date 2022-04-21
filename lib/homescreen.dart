import 'package:amazon/model/salemodel.dart';
import 'package:amazon/saletyle.dart';

import 'package:amazon/sidescreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
     HomeScreen({Key? key}) : super(key: key);

    List<SaleDetails> items=[
     SaleDetails(
      images: "assets/images/iphone.jpg",
      title: "IPHONE 13 pro",
      details: ''' 
Model : Iphone 13 Pro 
Brand :	Apple
Colour : Blue
Memory Storage : 128 GB''',
      prize: 85666,
      date: "april 28",
     ),
     SaleDetails(
      images: "assets/images/oppo.jpg",
      title: "OPPO 5G",
      details: ''' 
      Model : Oppo 5G
      Brand : Oppo
      Colour : Green
      Memory Storage : 64Gb 
      ''',
      prize: 45000,
      date: "june 5",
     ),
     SaleDetails(
      images: "assets/images/oneplus.jpg",
      title: " ONEPLUS 9T",
      details: ''' 
      Model : OnePlus 9T
      Brand : OnePlus
      Colour : Skyblue
      Memory Storage : 256gb
      ''',
      prize: 76999,
      date: "july 13",
     ),
     SaleDetails(
      images: "assets/images/realme.jpg",
      title: "REALME NOTE 11",
      details:''' 
      Model : RealMe Note 11
      Brand : RealMe
      Colour : Blue
      Memory Storage : 128Gb
      ''',
      prize: 30000,
      date: "may 12",
     ),
     SaleDetails(
      images: "assets/images/samsung.webp",
      title: "SAMSUNG GALAXY",
      details: ''' 
      Model : SAMSUNG
      Brand : Samsung
      Colour : Black
      Memory Storage : 64Gb
       ''',
      prize: 25666,
      date: "february 25",
     ),

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer:const SideMenu(),
      appBar: AppBar(
        title: const Text('Amazon',
        style: TextStyle(color: Colors.black),),
        backgroundColor:const Color(0xff92eded) ,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Icon(Icons.search),
           SizedBox(width: 8.0,),
          Icon(Icons.mic),
          SizedBox(width: 8.0,),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 8.0,),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 10.0,
            ),
            child: TextField(
              decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(Icons.search),
              hintText: "Search",
              suffix: Text('|',),
              suffixIcon: Icon(Icons.camera_alt_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0)),
                )
              ),
            ),
          )) ,
        
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return  SaleTile(data: items[index],);
        },
      ),
      
    );
  }
}
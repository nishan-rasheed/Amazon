import 'package:amazon/homescreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      print("tapped");
                    }),
                    child: Image.asset("assets/images/prime.jpg",
                    height: 80.0,
                    width: 150.0,),                  
                  ),
                 const Text("Prime"),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(builder:
                       (context){
                         return HomeScreen();
                       }));
                    }),
                    child: Image.asset("assets/images/mobiles.jpg",
                    height: 80.0,
                    width: 150.0,),                  
                  ),
                  const Text("Mobiles"),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      print("tapped");
                    }),
                    child: Image.asset("assets/images/fashion.jpg",
                    height: 100.0,
                    width: 100.0,),                  
                  ),
                  const Text("Fation"),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      print("tapped");
                    }),
                    child: Image.asset("assets/images/electronics.jpg",
                    height: 80.0,
                    width: 150.0,),                  
                  ),
                  const Text("Electronics"),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      print("tapped");
                    }),
                    child: Image.asset("assets/images/shoe.jpg",
                    height: 80.0,
                    width: 150.0,),                  
                  ),
                  const Text("Shoes"),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      print("tapped");
                    }),
                    child: Image.asset("assets/images/watch.jpg",
                    height: 80.0,
                    width: 150.0,),                  
                  ),
                  const Text("watches"),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      print("tapped");
                    }),
                    child: Image.asset("assets/images/appliances.jpg",
                    height: 80.0,
                    width: 150.0,),                  
                  ),
                  const Text("Appliances"),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: (() {
                      print("tapped");
                    }),
                    child: Image.asset("assets/images/books.jpg",
                    height: 80.0,
                    width: 150.0,),                  
                  ),
                  const Text("Books &other"),
                ],
              ),
              
            ],
          ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Column(
        //     children: [
        //       ListView.builder(
        //         itemCount: 1,
        //         itemBuilder: (BuildContext context, int index) {
        //           return const ListTile(
        //             title: Text("hello"),
        //           );
        //         },
        //       ),
        //     ],
        //   ),
        // )
       
       ],
    );
  }
}
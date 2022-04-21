import 'package:amazon/firstscreen.dart';
import 'package:amazon/sidescreen.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const SideMenu(),
      body: CustomScrollView(
       slivers: [
          const SliverAppBar(
            
            
           floating: true,
          title:  Text('Amazon',
        style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xff92eded) ,
        iconTheme:  IconThemeData(color: Colors.black),
        actions:  [
          Icon(Icons.search),
           SizedBox(width: 8.0,),
          Icon(Icons.mic),
          SizedBox(width: 8.0,),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 8.0,),
        ],
        
        bottom:  PreferredSize(
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
              suffix: Text('|',
              style: TextStyle(
                color: Colors.black
              ),),
              suffixIcon: Icon(Icons.camera_alt_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0)),
                )
              ),
            ),
          )) ,
        
          //  flexibleSpace: Placeholder(),
           expandedHeight: 150.0,
         ),
         
        // SliverList(delegate: SliverChildBuilderDelegate(
          
        //   (context, index) {
        //     return FirstScreen();
            //  children: [
            //    Row(
            //      children: const[
            //        Text('hello')
            //      ],
            //    ),
            //    const ListTile(
            //      title: Text("nishan"),
            //    )
            //  ],
            // );
          //},
          // childCount: 35,
        // ))
          
        SliverList(delegate: SliverChildListDelegate(
          [
            FirstScreen(),
            
          ]
        ))
         
       ],
      ),
    );
  }
}
import 'package:amazon/dash.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child:Scaffold(
        appBar:PreferredSize(
          preferredSize:const Size.fromHeight(80.0),
          child: AppBar(
          backgroundColor: Color(0xff92eded),
          leading: const Padding(
            padding:  EdgeInsets.only(
              top: 8.0,
              left: 5.0,),
            child:  CircleAvatar(
              child: Icon(Icons.person,
              color: Colors.white),
             radius: 2.0,
            ),
          ),
          title:const Text('Hello Nishan'
          ,style: TextStyle(
            color: Colors.black
          ),
          ),
        ),
      ),
      body: ListView(
        children:  [
          ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const DashBoard();
              }));
            },
            title: Text("Home",),),
          ListTile(onTap: (){},title: Text("Shop by category",),),
          ListTile(onTap: (){},title: Text("Todays deals",),),
          const Divider(
            thickness: 5.0,
          ),
          ListTile(onTap: (){},title: Text("Your order",),),
          ListTile(onTap: (){},title: Text("Buy again",),),
          ListTile(onTap: (){},title: Text(" Your wishlist",),),
          ListTile(onTap: (){},title: Text("Your account",),),
          ListTile(onTap: (){},title: Text("Amazon Prime",),),
          ListTile(onTap: (){},title: Text("Try prime",),),
          ListTile(onTap: (){},title: Text("Sell on amazon",),),
          ListTile(onTap: (){},title: Text("Programms and features",),
          trailing: IconButton(onPressed: (){}, icon:Icon(Icons.navigate_next),),),
          const Divider(
            thickness: 5.0,
          ),
          ListTile(onTap: (){},title: Text("languages",),),
          ListTile(onTap: (){},title: Text("Your notification",),),
          ListTile(onTap: (){},title: Text("Settings",),
          trailing: Icon(Icons.flag_sharp),),
           ListTile(onTap: (){},title: Text("Costomer service",),),
        ],
      )
    ),
    );
  }
}
import 'package:flutter/material.dart';

class SaleT extends StatelessWidget {
  const SaleT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
children: [
  Container(
          child: Image.network("https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-redmi-10-1.jpg"),
          width: MediaQuery.of(context).size.width/2,
          height: 300.0,
          
        ), 
 Column(
   crossAxisAlignment: CrossAxisAlignment.end,
    children:  [
     const Text("redmi 9A"),
     const Text('''moonlight white,
            8gb ram ,
            256gb '''),
          const   Text("price"),
           const  Text("date"),
            ElevatedButton(onPressed: (){print("item bought");},
             child:const Text("Buy"),),
    ],
 )    
],
    );
  }
}
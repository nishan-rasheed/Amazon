import 'package:amazon/model/salemodel.dart';
import 'package:flutter/material.dart';

class SaleTile extends StatelessWidget {
  SaleTile({Key? key,required this.data}) : super(key: key);
   SaleDetails data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
           Container(
              child: Image.asset(data.images.toString()),
              width: MediaQuery.of(context).size.width/2,
              height: 300.0,
              
            ), 
            // ListTile(
              
            // ),
            Container(
              // color: Colors.green,
              width: MediaQuery.of(context).size.width/2,
              height: 300.0,
              // child: const ListTile(
                
              //   title: Text('redmi 9A'),
                
              //   subtitle: Text('''moonlight white,
              //   8gb ram ,
              //   256gb '''
              //   ),

              // ),
              child: Column(
                textDirection: TextDirection.ltr,
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Text(data.title.toString(),
                      style: const TextStyle(fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                      ),
                  Text(data.details.toString(),
                  style: const TextStyle(fontSize: 15.0),),
                  Text("price :"+data.prize.toString()),
                  Text("delivered by " +data.date.toString()),
                ElevatedButton(onPressed: (){print("item bought");},
                 child:const Text("Buy"),),

                 
                ],
                

                
              ),
            ),
          
          ],
          
          
        ),
        const Divider(
          thickness: 5.0,
        )
    
      ],
    );
    
    
  }
}
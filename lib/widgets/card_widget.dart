




import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String? title;
  final String?url;
   CardWidget({super.key,this.title,this.url});

  @override
  Widget build(BuildContext context) {
     final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
             children:[ 
              Card(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     Container(
                      // width:screenWidth*0.5 ,
                       height: 120,
                      width: 130,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                         image: DecorationImage(image: AssetImage('assets/images/image_2.png'),fit: BoxFit.cover)
                       ),
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Align(
                                       alignment: Alignment.topRight,
                                        child: Container(
                                         height: 20,
                                         width: 50,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(6),
                                           color: Colors.white,
                                         ),
                                         child: Center(child: Text('Hall')),
                                        ),
                                      ),
                       ),
                       
                        
                     ),
                       
                     
                     Padding(
                       padding: const EdgeInsets.only(top: 5,right: 25),
                       child: Text('Ramma Wedding\nVenues',style: TextStyle(fontWeight: FontWeight.w800),),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('Welcome to our Hall, Call us\n for more details\n 0300 12 34 567',style: TextStyle(fontSize: 11),),
                     )
               
                    ],
               ),
             ),
             
             ]
           );
  }
}
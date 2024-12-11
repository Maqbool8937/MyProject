import 'package:flutter/material.dart';
import 'package:wedding_project/widgets/custom_container.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<SocialScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      // backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      margin: EdgeInsets.all(11),
                      height: screenHeight*0.05,
                      width: screenWidth*0.3,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('multi.me',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  Text('Social',style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.w700),),
                  Icon(Icons.arrow_drop_down,color: Colors.red,size: 32,weight:22),
                  SizedBox(width: 20,),
                  Icon(Icons.map_rounded),
                   SizedBox(width: 20,),
                  Icon(Icons.notifications_on_sharp),
                   SizedBox(width: 10,),
                  Icon(Icons.search,size: 23,),

                ],
              ),
            ),
            SizedBox(height: 20,),
            CustomContainer(),
            _custmTwo(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('Lorem ipsum sample description goes here. This is a sample caption text for this post.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            ),
            CustContImg(),

          ],
        ),
      ),
//       bottomSheet:Container(
//         height: 170,
//         width: double.infinity,
//         decoration: BoxDecoration(
//  color: Colors.white,
//  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
//         ),
       
//       ),
    ),
    );
  }
  Widget _custmTwo(){
    return Padding(padding: EdgeInsets.all(10),
    child: Row(
      
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/image_2.png'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text('Kartik Khorwall',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text('20/09/2023',style: TextStyle(fontSize: 12),),
        ),
        
      ],
      
    ),
   
    );
  }
  Widget CustContImg(){
    return Padding(padding: EdgeInsets.all(10),
    child: Stack(
      children: [
        Container(
          height: 130,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0, 3)
              ),
            ],
            image: DecorationImage(image: AssetImage('assets/images/image_1.png'),fit: BoxFit.cover),
          ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 220,top: 10),
            child: Icon(Icons.person,color: Colors.white,))
        ],
      )
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 40),
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              
            ),
            child: Column(
              children: [
              ListView(
      shrinkWrap: true,
                children:[
                   ListTile(
                    leading: Icon(Icons.person),
                  title: Text('ajbf'),
                  // subtitle: Icon(Icons.voice_over_off),
                  trailing: Icon(Icons.arrow_back),
                ),
                ]
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 100),
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     child: Image.asset('assets/images/image_2.png',height: 200,width: 200,)),
              // )
              ],
              
            ),
            // child: Column(children: [
            //   Row(
            //     children: [
            //      ListView(
                  
            //       children: [
            //         ListTile(
            //           title: Text('Maqbool',style: TextStyle(color: Colors.white),),
            //          )
            //       ],
            //      )
            //     ],
            //   )
            // ]
            // ,),
          ),
        )
      ],
    ),
    );
  }
}
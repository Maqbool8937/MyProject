import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  List<String> imageurl = [
'assets/images/image_1.png',
'assets/images/image_2.png',
'assets/images/image_1.png',
'assets/images/image_2.png',
'assets/images/image_1.png',
'assets/images/image_2.png'
  ];
   List<String> Texturl = [
'Hall',
'MAq'
  ];

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.7, // Provide a responsive width
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(30),

                      boxShadow: [ BoxShadow(
      color: Colors.black.withOpacity(0.2), // Shadow color with opacity
      blurRadius: 0.4, // How soft the shadow is
      spreadRadius: 0.6, // Controls the size of the shadow
      offset: const Offset(0, 2), // Move the shadow vertically downwards
    ),
  ],
                    ),
                    child: Row(
                      children: [
                        // Expanded ensures the TextField takes available space
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.0), // Adds space on the left
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Color(0xffD9D9D9)),
                                border: InputBorder.none, // Removes the underline border
                              ),
                            ),
                          ),
                        ),
                        // A fixed-sized container for the button/icon
                        Container(
                          height: screenHeight * 0.04,
                          width: screenHeight * 0.04,
                          margin: EdgeInsets.only(right: 10), // Add some margin for spacing
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            color: Colors.white,
                            shape: BoxShape.circle,
                             // Makes the container circular
                          ),
                          child: Icon(
                            Icons.filter_1,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Column(
                    children: [
               GestureDetector(
            onTap: () {
              // Toggle the state of the switch
              setState(() {
                isSwitched = !isSwitched;
              });
            },
            child: Container(
              width: 44,
              height: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isSwitched ? Color(0xffA0A7DC) : Colors.grey[300], // Background color
              ),
              child: Stack(
                children: [
                  AnimatedAlign(
                    alignment:
                        isSwitched ? Alignment.centerRight : Alignment.centerLeft,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: 22,
                      height: 22,
                      margin: EdgeInsets.all(1), // Adds space around the toggle
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Toggle button color
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
               ),
               SizedBox(height: 5,),
               Text('Switch to\n Business',style: TextStyle(color: Color(0xff4A4F62),fontSize: 10),),
                    ],
                  )
                ],
                
              ),
             Padding(
               padding: const EdgeInsets.only(left: 100,top: 30),
               child: Center(
                 child: Container(
                  height: 30,
                  width: 300,
                   child: Row(
                    children: [
                      Text('showing 12 results:',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500 ),),
                
                      Text(' Update Filters',style: TextStyle(fontSize: 11, ),)
                    ],
                   ),
                 ),
               ),
             ),
             
             SizedBox(height: 20,),

             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                children: [
                  for(int i=0;i<imageurl.length;i++)
                  // Container(
                  //   height: 90,
                  //   width: 110,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(70),
                  //     color: Colors.white,
                  //     image: DecorationImage(image: AssetImage(imageurl[i]))
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.person,size: 20,),
                        ),
                      ),
                      backgroundImage: AssetImage(
                                    
                      imageurl[i]),radius: 40,),
                  )
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('13 Oct 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
             ),
                     
          
              SizedBox(height: 20,),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                         for(int i=0;i<imageurl.length;i++)
                         Stack(
             children:[ 
              Card(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     Container(
                      // width:screenWidth*0.5 ,
                       height: 120,
                      width: 160,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                         image: DecorationImage(image: AssetImage(imageurl[i]),fit: BoxFit.cover)
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
                                         child: Text('mama')
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
           ),
                    //CardWidget(url: imageurl[i],),
                  //  CardWidget(),
               
                 ],
               ),
             ),
           
            
              
            ],
          ),
        ),
      ),
    );
  }

}

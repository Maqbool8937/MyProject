import 'package:flutter/material.dart';
class CategoryScreen extends StatefulWidget {

  
   CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  String? _selectedItem;
   final List<String> _items = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.green.withOpacity(0.2),
      bottomSheet: Container(
        height: screenHeight*0.7,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.cancel)),
              ),
                  
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Category Screen',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align
                        (
                          alignment: Alignment.centerRight,
                          child: Text('Reset',style: TextStyle(
                            color: Colors.blueAccent,decoration: TextDecoration.underline,
                            decorationColor:Colors.blueAccent,
                            decorationThickness: 2.0 
                            ),)),
                      )
                    ],
                  )),
              ),
              SizedBox(height: 20,),
               Padding(
                    padding: const EdgeInsets.only(top: 10,right: 240),
                    child: Text('Name',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                            decoration: InputDecoration(
                              hintText: '  Zuhair Francis',hintStyle: TextStyle(fontSize: 12),
                              border: InputBorder.none
                            ),
                            
                          ),
                     
                    ),
                  ),
                   Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      hintText: 'Search here...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 1,
                  color: Colors.grey.shade300,
                  thickness: 1,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    icon: Icon(Icons.arrow_drop_down),
                    items: [
                      DropdownMenuItem(
                        value: 'Option 1',
                        child: Text('Option 1'),
                      ),
                      DropdownMenuItem(
                        value: 'Option 2',
                        child: Text('Option 2'),
                      ),
                      DropdownMenuItem(
                        value: 'Option 3',
                        child: Text('Option 3'),
                      ),
                    ],
                    onChanged: (value) {
                      // Handle dropdown selection
                      print('Selected: $value');
                    },
                  ),
                ),
              ],
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230,top: 10),
            child: Text('Flowers',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                ),
              ]
            ),
            child: Row(
              children: [
                Expanded(child: TextField(
                  decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    hintText: 'Select Flowers....',
                    border: InputBorder.none
                  ),
                )),
                VerticalDivider(
                  color: Colors.red,
                  thickness: 1,
                  width: 1,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    icon: Icon(Icons.arrow_drop_down),
                    items: [
                      DropdownMenuItem(
                        value: 'Flower1',
                        child: Text('Flower1'),
                        
                        ),
                        DropdownMenuItem(
                          value: 'Flower2',
                          child: Text('Flower2'))
                    ], 
                    onChanged: (value){
                         print('Selected Flowers: $value'); 
                    }))
              ],
            ),
          ),
          ),
          Padding(padding: 
          EdgeInsets.symmetric(horizontal: 30,vertical: 15),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(),
            ),
            child: Row(
              children: [
                Expanded(child: TextField(
                  decoration: InputDecoration(
                    hintText: 'categories',
                    border:InputBorder.none ,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16)
                  ),
                )),
                VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  width: 1,
                ),
                DropdownButton(
                  icon: Icon(Icons.arrow_drop_down),
                  items: [
                    DropdownMenuItem(
                      value: 'Catergory1',
                      child: Text('Category1')),
                      DropdownMenuItem(
                        value: 'categor2',
                        child: Text('Category2'))
                  ],
                   onChanged: (Value){
                  
                   })
              ],
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Select Date',style: TextStyle(fontSize: 16,),)),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 90),
                             child: Align(
                              alignment: Alignment.topLeft,
                               child: Text(
                                               'Start',
                                               style: TextStyle(fontSize: 14,),
                               ),
                             ),
                           ),
                           Container(
                margin: EdgeInsets.only(top: 4), // Spacing between text and line
                height: 2, // Line thickness
                width: 120, // Line width
                color: Colors.black, // Line color
                           ),
                         ],
                       ),
             ),
              Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30),
               child: Column(
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 90),
                             child: Align(
                              alignment: Alignment.topLeft,
                               child: Text(
                                               'End',
                                               style: TextStyle(fontSize: 14,),
                               ),
                             ),
                           ),
                           Container(
                margin: EdgeInsets.only(top: 4), // Spacing between text and line
                height: 2, // Line thickness
                width: 120, // Line width
                color: Colors.black, // Line color
                           ),
                         ],
                       ),
             ),
            ],
          ),
          SizedBox(height: 20,),
          Column(
            children: [
              Row(
               
                children: [
                  Padding(padding: 
                  EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Sas', style: TextStyle(fontSize: 14,),),
                          DropdownButton(
                            icon: Icon(Icons.arrow_drop_down),
                            items:[
                              DropdownMenuItem(
                                
                                value:'s1',
                                child: Text('s1')),
                                DropdownMenuItem(
                                  value: 's2',
                                  child: Text('s2'))
                            ],
                             onChanged: (value){
                                Text('sas:$value');
                             })
                        ],
                      ),
                    ),
                  ),
                  ),
                   Padding(padding: 
                  EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Singer', style: TextStyle(fontSize: 14,),),
                          DropdownButton(
                            icon: Icon(Icons.arrow_drop_down),
                            items:[
                              DropdownMenuItem(
                                
                                value:'s1',
                                child: Text('s1')),
                                DropdownMenuItem(
                                  value: 's2',
                                  child: Text('s2'))
                            ],
                             onChanged: (value){
                                Text('sas:$value');
                             })
                        ],
                      ),
                    ),
                  ),
                  )
                ],
              )
            ],
          )
              
            ],
          ),
        ),
      ),
      
      ),
    );
  }
}
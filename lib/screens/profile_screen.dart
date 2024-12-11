import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
         backgroundColor: Color(0xffFFFFFF),
         body: SingleChildScrollView(
           child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Row(
                 
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Icon(Icons.arrow_back_ios,size: 20,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Text('Profile',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/image_2.png'),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffbA0A7DC),
                      borderRadius: BorderRadius.circular(30)
                      ),
                      child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    ),
                ),
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
                 //SizedBox(height: 10,),
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
                 //SizedBox(height: 10,),
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
                SizedBox(height: 20,),
                Container(
                  width: 300,
                  //color: Color(0xffA0A7DC),
                  child: ElevatedButton(
                    style:ButtonStyle(backgroundColor:WidgetStatePropertyAll(Color(0xffA0A7DC)) ) ,
                    onPressed: (){},
                   child: Text('Log Out',style: TextStyle(color: Colors.white),)),
                )
              
            ],
           ),
         ),
    ),
    );
  }
}
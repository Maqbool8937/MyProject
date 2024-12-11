import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 12),
    child: Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
           // color: Colors.white.withOpacity(0.4),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 2)
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              
              backgroundImage: AssetImage('assets/images/image_1.png'),
            ),
          
          ),
          Text('Create a moment... Whats on your mind?',style: TextStyle(color: Color(0xff8C8C8C,),fontSize: 12),),
          Icon(Icons.record_voice_over_sharp)
        ],
      ),
    ),
    );
  }
}
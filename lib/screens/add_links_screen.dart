import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddLinksScreen extends StatefulWidget {
  const AddLinksScreen({Key? key}) : super(key: key);

  @override
  State<AddLinksScreen> createState() => _AddLinksScreenState();
}

class _AddLinksScreenState extends State<AddLinksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Links Screen")),
      body: Center(
        child: IconButton(
          icon:  FaIcon(FontAwesomeIcons.instagram,color: Colors.red,size: 54,),  
          iconSize: 50.0,
          color: Colors.blue,
          onPressed: _launchInstagram,
        ),
      ),
    );
  }

  void _launchInstagram() async {
    // Define Instagram URLs
    final Uri instagramWebUrl = Uri.parse('https://www.instagram.com/muhammad.maqbool.39904/?igsh=YzljYTk1ODg3Zg%3D%3D');
    final Uri instagramAppUrl = Uri.parse('instagram://user?username=muhammad.maqbool.39904');

    // Check if Instagram app can handle the link
    if (await canLaunchUrl(instagramAppUrl)) {
      await launchUrl(instagramAppUrl, mode: LaunchMode.externalApplication);
    } 
    // Fallback to web URL
    else if (await canLaunchUrl(instagramWebUrl)) {
      await launchUrl(instagramWebUrl, mode: LaunchMode.externalApplication);
    } 
    // Error handling
    else {
      throw 'Could not launch $instagramWebUrl';
    }
  }
}

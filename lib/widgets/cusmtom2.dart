import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wedding_project/screens/social_screen.dart';
import 'package:wedding_project/widgets/drawer_widget.dart';

import 'provider/theme_provider.dart';


class BottomNavBarScreen extends StatefulWidget {
  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  
  int _selectedIndex = 0;

  final List<Widget> screens = [
    SocialScreen(),
    Center(child: Text('Search Screen')),
    Center(child: Text('Notification Screen')),
    Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
     final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Bar with FAB"),
        actions: [
           Switch(value:themeProvider.isDarkMode , onChanged: (value){
          themeProvider.toggleTheme();
            }
            )
        ],
      ),
      
      drawer: DrawerWidget(),
      body: screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          setState(() {
            _selectedIndex = 2; // FAB navigates to Notifications
          });
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(),
        ),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () => _onItemTapped(0), // Navigate to Home
                  color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => _onItemTapped(1), // Navigate to Search
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () => _onItemTapped(2), // Navigate to Notifications
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () => _onItemTapped(3), // Navigate to Profile
                  color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                ),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}


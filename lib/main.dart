import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:wedding_project/screens/website_screen.dart';

import 'screens/add_links_screen.dart';
import 'screens/onboarding_screen.dart';
import 'widgets/provider/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     final themeProvider = Provider.of<ThemeProvider>(context);
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     
       theme:themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      // theme: ThemeData(

      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      
      home:  AddLinksScreen()
    );
  }
}

//Code for Dark Mode:
   //bool isDarkMode = false;

//    Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Brightness Toggle"),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text("Light Mode"),
//               Switch(
//                 value: isDarkMode,
//                 onChanged: (value) {
//                   setState(() {
//                     isDarkMode = value;
//                   });
//                 },
//               ),
//               const Text("Dark Mode"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
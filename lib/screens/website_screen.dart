// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';

// class WebsiteScreen extends StatefulWidget {
//   const WebsiteScreen({Key? key}) : super(key: key);

//   @override
//   _WebsiteScreenState createState() => _WebsiteScreenState();
// }

// class _WebsiteScreenState extends State<WebsiteScreen> {
//   late WebViewController _controller;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize the WebView and controller
//     WebViewPlatform.instance;

//     // Request permissions before loading the WebView
//     _requestPermissions();

//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..loadRequest(Uri.parse('https://www.youtube.com'))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onPageStarted: (url) {
//             debugPrint('Page started loading: $url');
//           },
//           onPageFinished: (url) {
//             debugPrint('Page finished loading: $url');
//           },
//           onNavigationRequest: (request) {
//             debugPrint('Navigation request to: ${request.url}');
//             return NavigationDecision.navigate;
//           },
//           // onPermissionRequest: (request) {
//           //   debugPrint('Permission requested: ${request.types}');
//           //   // Handle permissions
//           //   if (request.types.contains(PermissionType.camera) ||
//           //       request.types.contains(PermissionType.microphone)) {
//           //     // Camera and Microphone permissions are requested by WebView
//           //     // Grant them manually
//           //     request.grant();
//           //   } else {
//           //     // Deny other permissions
//           //     request.deny();
//           //   }
//           // },
//         ),
//       );
//   }

//   // Method to request permissions
//   Future<void> _requestPermissions() async {
//     // Request camera and microphone permissions
//     PermissionStatus cameraStatus = await Permission.camera.request();
//     PermissionStatus microphoneStatus = await Permission.microphone.request();

//     // Check if permissions are granted
//     if (cameraStatus.isGranted && microphoneStatus.isGranted) {
//       debugPrint("Permissions granted: Camera and Microphone");
//     } else {
//       debugPrint("Permissions denied: Camera and Microphone");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("WebView Example")),
//       body: WebViewWidget(controller: _controller),
//     );
//   }

//   // @override
//   // void dispose() {
//   //   super.dispose();
//   //   _controller.dispose();
//   // }
// }

import 'package:flutter/material.dart';
import 'package:wedding_project/widgets/cusmtom2.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "title": "Welcome",
      "description": "Discover amazing features to boost your productivity.",
      "image": "assets/images/image_1.png"
    },
    {
      "title": "Stay Connected",
      "description": "Easily communicate and collaborate with your team.",
      "image": "assets/images/image_2.png"
    },
    {
      "title": "Get Started",
      "description": "Experience the seamless way to manage your work.",
      "image": "assets/images/image_1.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: _onboardingData.length,
            itemBuilder: (context, index) {
              return OnboardingPage(
                title: _onboardingData[index]['title']!,
                description: _onboardingData[index]['description']!,
                image: _onboardingData[index]['image']!,
              );
            },
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _onboardingData.length,
                    (index) => buildDot(index, context),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_currentIndex == _onboardingData.length - 1) {
                      // Navigate to Home Screen
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => BottomNavBarScreen(),
                        ),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text(
                    _currentIndex == _onboardingData.length - 1
                        ? "Get Started"
                        : "Next",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentIndex == index ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const OnboardingPage({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 300), // Replace with your own image path
        SizedBox(height: 30),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Welcome to the app!'),
      ),
    );
  }
}






// Onboardong Screen with Package:
// import 'package:flutter/material.dart';
// import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
// import 'package:wedding_project/widgets/cusmtom2.dart';
// class OnboardingScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return OnBoardingSlider(
//       speed: 2,
//       headerBackgroundColor: Colors.white,
//       finishButtonText: 'Get Started',
//       finishButtonStyle: FinishButtonStyle(
//         backgroundColor: Colors.red,
//         // textColor: Colors.white,
//       ),
//       onFinish: () {
//         // Navigate to the next screen or home page
//         Navigator.of(context).pushReplacement(
//           MaterialPageRoute(
//             builder: (context) => BottomNavBarScreen(),
//           ),
//         );
//       },
//       skipTextButton: Text(
//         'Skip',
//         style: TextStyle(color: Colors.teal),
//       ),
//       trailing: Icon(Icons.arrow_forward, color: Colors.yellow),
//       background: [
//         Container(color: Colors.white),
//         Container(color: Colors.white),
//         Container(color: Colors.white),
//       ],
//       totalPage: 3,
//       pageBodies: [
//         OnboardingPage(
//           title: "Welcome",
//           description: "Discover amazing features to boost your productivity.",
//           image: Image.asset('assets/images/image_1.png', height: 400,width: double.infinity,),
//         ),
//         OnboardingPage(
//           title: "Stay Connected",
//           description: "Easily communicate and collaborate with your team.",
//           image: Image.asset('assets/images/image_2.png', height: 200),
//         ),
//         OnboardingPage(
//           title: "Get Started",
//           description: "Experience the seamless way to manage your work.",
//           image: Image.asset('assets/images/image_1.png', height: 200),
//         ),
//       ],
//     );
//   }
// }

// class OnboardingPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final Widget image;

//   const OnboardingPage({
//     required this.title,
//     required this.description,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         image,
//         SizedBox(height: 20),
//         Text(
//           title,
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 10),
//         Text(
//           description,
//           textAlign: TextAlign.center,
//           style: TextStyle(fontSize: 16, color: Colors.grey),
//         ),
//       ],
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Text('Welcome to the app!'),
//       ),
//     );
//   }
// }
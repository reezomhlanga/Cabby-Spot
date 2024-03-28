import 'package:flutter/material.dart';
import 'login.dart'; // Import the login.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(builder: (context) => MyHomePage());
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 400, // Set the desired width
              height: 400, // Set the desired height
              child: Image.asset(
                'assets/shape.png', // Path to your image asset
                fit:
                    BoxFit.contain, // Fit the entire image within the container
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Transform.rotate(
              angle: 90 * 3.14 / 180, // Rotate -90 degrees in radians
              child: Container(
                width: 400, // Set the desired width
                height: 400, // Set the desired height
                child: Image.asset(
                  'assets/shape.png', // Path to your image asset
                  fit: BoxFit
                      .contain, // Fit the entire image within the container
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image in the center
                Image.asset(
                  'assets/logo.jpeg',
                  width: 500, // Adjust as needed
                  height: 500,
                ),
                SizedBox(height: 2), // Spacer
                // Text under the image
                Text(
                  'Lorem ipsum dolor sit amet',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20), // Spacer
                Center(
                  // Center the second text vertically
                  child: Text(
                    'Lorem ipsum dolor sit amet, \n consectetur adipiscing elit. Interdum dictum tempus, \n interdum at dignissim metus. Ultricies sed nunc.',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center, // Center the text horizontally
                  ),
                ),
                SizedBox(height: 50), // Spacer
                // Button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the login page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LoginPage()), // Replace LoginPage() with your actual login page widget
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(300, 90)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF280072)),
                  ),
                  child: Text(
                    'Get Startedd',
                    style: TextStyle(
                        color: Colors.white), // Set the text color to white
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

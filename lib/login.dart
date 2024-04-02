import 'package:flutter/material.dart';
import 'signup.dart'; // Import the signup.dart file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text at the center
                  Text(
                    'Welcome!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20), // Spacer
                  // Image under the text
                  Image.asset(
                    'assets/logo.jpeg',
                    width: 500, // Adjust as needed
                    height: 500,
                  ),
                  SizedBox(height: 20), // Spacer
                  // Email input field
                  Container(
                    width: 600,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 5), // Adjust vertical padding
                        labelText: '   Enter your email',
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  // Password input field
                  Container(
                    width: 600,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                        labelText: '   Enter your password',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Forgot password text
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 570), // Adjust padding as needed
                    child: TextButton(
                      onPressed: () {
                        // Add forgot password functionality here
                      },
                      child: Text('Forgot password'),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Sign in button
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
                      minimumSize: MaterialStateProperty.all(Size(300, 70)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF280072)),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white), // Set the text color to white
                    ),
                  ),
                  SizedBox(height: 20),
                  // Don't have an account text
                  GestureDetector(
                    onTap: () {
                      // Navigate to sign up page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "Sign up",
                          style: TextStyle(color: Color(0xFF280072)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

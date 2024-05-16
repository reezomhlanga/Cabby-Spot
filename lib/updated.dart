import 'package:cabby_spot/AccountRide.dart';
import 'package:cabby_spot/dashboard.dart';
import 'package:cabby_spot/refill.dart';
import 'package:cabby_spot/update.dart';
import 'package:flutter/material.dart';
import 'ehailing.dart';
import 'login.dart';

class Updated extends StatefulWidget {
  @override
  _UpdatedState createState() => _UpdatedState();
}

class _UpdatedState extends State<Updated> {
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 400,
              height: 400,
              child: Image.asset(
                'assets/shape.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Transform.rotate(
              angle: 90 * 3.14 / 180,
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      width: 400, // Adjusted width
                      height: 400,
                      'assets/shape.png',
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: 20,
                      right: 300,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyApp()), // Replace LoginPage() with your actual login page widget
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Container(
                  width: 600,
                  height: 300,
                  color: Color.fromARGB(255, 184, 180, 180),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Account Has Been Updated.',
                        style: TextStyle(fontSize: 28),
                      ),
                      SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for the Continue button
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Update()), // Replace LoginPage() with your actual login page widget
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFF280072)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(Size(150, 70)),
                        ),
                        child: Text(
                          'OK',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            bottom: 100,
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 1,
              color: Colors.grey,
            ),
          ),
          Positioned(
            left: 460,
            bottom: 0,
            child: Center(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardPage(),
                        ),
                      );
                    },
                    icon: Icon(Icons.home, size: 40),
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 960,
            bottom: 0,
            child: Container(
              width: 1,
              height: MediaQuery.of(context).size.height - 920,
              color: Colors.grey,
            ),
          ),
          Positioned(
            left: 1440,
            bottom: 0,
            child: Center(
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Refill(),
                        ),
                      ); //// Add functionality for account icon
                    },
                    icon: Icon(Icons.account_circle, size: 40),
                  ),
                  Text(
                    'Account',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithText(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedOption = text;
          });
        },
        child: Column(
          children: [
            Container(
              width: _selectedOption == text ? 200 : 150,
              height: _selectedOption == text ? 200 : 150,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: _selectedOption == text
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Updated(),
  ));
}

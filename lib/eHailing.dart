import 'package:flutter/material.dart';
import 'dashboard.dart';

class eHailingOption extends StatefulWidget {
  @override
  _eHailingOptionState createState() => _eHailingOptionState();
}

class _eHailingOptionState extends State<eHailingOption> {
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
                width: 400,
                height: 400,
                child: Image.asset(
                  'assets/shape.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/image007.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Uber',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Available Drivers',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 1200,
                  height: 500,
                  color: Color.fromARGB(255, 250, 246, 246),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildImageWithText(
                                'assets/image007.png', 'eHailingOption'),
                            _buildImageWithText('assets/image008.png', 'Bolt'),
                            _buildImageWithText('assets/image009.png', 'Zebra'),
                            _buildImageWithText('assets/image010.png', 'Ingwe'),
                            // Add more images and text here as needed
                          ],
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
                      // Add functionality for account icon
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
    home: eHailingOption(),
  ));
}

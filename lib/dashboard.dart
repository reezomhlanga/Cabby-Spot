import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
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
                        'assets/image006.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome, Lira Phillips!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Balance: ',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'R189.98',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 12, 101, 48),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 1200,
                  height: 600,
                  color: Color.fromARGB(255, 250, 246, 246),
                  child: Center(
                    child: Text(
                      'Please Select Your eHealing Option',
                      style: TextStyle(fontSize: 20),
                    ),
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
}

void main() {
  runApp(MaterialApp(
    home: DashboardPage(),
  ));
}

import 'package:cabby_spot/AccountRide.dart';
import 'package:cabby_spot/confirm.dart';
import 'package:cabby_spot/eHailing.dart';
import 'package:cabby_spot/print.dart';
import 'package:cabby_spot/refill.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'login.dart';

class Receipt extends StatefulWidget {
  @override
  _ReceiptState createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
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
                                color: Colors.white,
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
                Text(
                  'RECEIPT', // Your text here
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'XXX Shop', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '5 West 20th Street, Ekukhanyeni Centre ', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Nelspruit, 1200, Tel: +013 232 XXX XXX', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Tax Invoice VAT NO: 65635465 ', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Vehicle : Corolla , Grey , Toyota', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'License Plate : JNJ 391', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Driver : Robert Diph  ', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'From : Mbombela , Western Street 14', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'To : Mbombela, ilangaMall', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Distance : 5.1 km', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Available Balance: R861.00', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Auth #: 37676546 ', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Ref #: 83856456256286586428 ', // Your text here
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'KEEP THIS RECEIPT SAFE ', // Your text here
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20), // Add some space between buttons
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmPage()),
                        );
                        // Add functionality for cancel button
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 122, 122, 122)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(150, 70)),
                      ),
                      child: Text(
                        'Back',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 100),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Print()),
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
                        ' Print Receipt',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
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
}

void main() {
  runApp(MaterialApp(
    home: Receipt(),
  ));
}

import 'package:cabby_spot/AccountRide.dart';
import 'package:cabby_spot/confirm.dart';
import 'package:cabby_spot/dashboard.dart';
import 'package:cabby_spot/deleted.dart';
import 'package:cabby_spot/help.dart';
import 'package:cabby_spot/refill.dart';
import 'package:cabby_spot/update.dart';
import 'package:flutter/material.dart';
import 'ehailing.dart';
import 'login.dart';

class Delete extends StatefulWidget {
  @override
  _DeleteState createState() => _DeleteState();
}

class _DeleteState extends State<Delete> {
  int? selectedOption;

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
                      'assets/shape.png',
                      width: 400, // Adjusted width
                      height: 400,
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
                                    MyApp()), // Replace MyApp() with your actual login page widget
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
                          'Lira Phillips!',
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
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ride()),
                        );
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
                        'My Rides',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20), // Add some space between buttons
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Delete()),
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
                        'Delete Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20), // Add some space between buttons
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Update()),
                        );
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
                        'Update Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 20), // Add some space between buttons
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Help()),
                        );
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
                        'Help',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 650.0),
                    child: Text(
                      'Delete Account',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 700,
                  height: 380,
                  color: Color.fromARGB(255, 204, 200, 200),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 1200,
                          height: 100,
                          color: Color.fromARGB(255, 206, 203, 203),
                          child: Row(
                            children: [
                              SizedBox(width: 5), // Adjusted spacing
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'We’re really sorry to see you go, are you sure you want to delete your account? \n Once you confirm, your data will be gone.',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 1200,
                          height: 40,
                          color: Color.fromARGB(255, 206, 203, 203),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Radio<int>(
                                    value: 0,
                                    groupValue: selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(width: 5), // Adjusted spacing
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'I am no longer using my account',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 1200,
                          height: 40,
                          color: Color.fromARGB(255, 206, 203, 203),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Radio<int>(
                                    value: 1,
                                    groupValue: selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(width: 5), // Adjusted spacing
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'The service is too expensive',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 1200,
                          height: 40,
                          color: Color.fromARGB(255, 206, 203, 203),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Radio<int>(
                                    value: 2,
                                    groupValue: selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(width: 5), // Adjusted spacing
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'I don’t understand how to use the service',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 1200,
                          height: 40,
                          color: Color.fromARGB(255, 206, 203, 203),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Radio<int>(
                                    value: 3,
                                    groupValue: selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(width: 5), // Adjusted spacing
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'The service is not available in my city',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 1200,
                          height: 40,
                          color: Color.fromARGB(255, 206, 203, 203),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Radio<int>(
                                    value: 4,
                                    groupValue: selectedOption,
                                    onChanged: (int? value) {
                                      setState(() {
                                        selectedOption = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(width: 5), // Adjusted spacing
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Other',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20), // Add some space between buttons
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Deleted()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 209, 10, 10)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(Size(150, 70)),
                        ),
                        child: Text(
                          'Delete',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20),
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
                      ); // Add functionality for account icon
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
    home: Delete(),
  ));
}

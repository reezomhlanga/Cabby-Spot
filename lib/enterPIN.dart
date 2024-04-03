import 'package:flutter/material.dart';
import 'login.dart';
import 'insertCard.dart';
import 'confirmInfo.dart';

class EnterPIN extends StatelessWidget {
  const EnterPIN({Key? key}) : super(key: key);

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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image002.png',
                    width: 500,
                    height: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'Enter PIN',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Container(
                          width: 50,
                          height: 1,
                          color: Colors.black,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                        ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CardInsert()), // Replace LoginPage() with your actual login page widget
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(80, 80, 80, 80)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        ),
                        child: Text('Cancel',
                            style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality for the button
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 220, 220, 61)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        ),
                        child: Text('Clear',
                            style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ConfirmInfo()), // Replace LoginPage() with your actual login page widget
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 0, 151, 116)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          minimumSize: MaterialStateProperty.all(Size(150, 50)),
                        ),
                        child: Text('Enter',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nInterdum dictum tempus, interdum at dignissim metus.\nUltricies sed nunc.',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
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

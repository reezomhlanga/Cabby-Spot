import 'package:flutter/material.dart';
import 'faceScan.dart';

class Scanned extends StatelessWidget {
  const Scanned({Key? key}) : super(key: key);

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
                    'assets/image005.png',
                    width: 200,
                    height: 200,
                  ),
                  Center(
                    child: Text(
                      'Face not recognised!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    'Your face verification has been successfully submitted.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for the Continue button
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                FaceScan()), // Replace LoginPage() with your actual login page widget
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF280072)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all(Size(300, 70)),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'If the details are correct, click the confirm button above.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
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

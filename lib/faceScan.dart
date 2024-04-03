import 'package:flutter/material.dart';
import 'loading.dart';

class FaceScan extends StatelessWidget {
  const FaceScan({Key? key}) : super(key: key);

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
                  Center(
                    child: Text(
                      'Face Scan',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'The frame will turn green when your face is visible!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 93, 213, 97),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/image003.png',
                    width: 300,
                    height: 300,
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildBulletPointText('Check if your face fits the frame'),
                      buildBulletPointText(
                          'Check if image has no blur and is well-fit'),
                      buildBulletPointText(
                          'No glasses, headphones and other accessories on your face'),
                    ],
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for the Continue button
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Loading()), // Replace LoginPage() with your actual login page widget
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
                      'Take Picture',
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

  Widget buildBulletPointText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 800, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle, size: 10),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

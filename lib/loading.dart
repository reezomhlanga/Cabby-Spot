import 'package:flutter/material.dart';
import 'rescan.dart';
import 'scanned.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with TickerProviderStateMixin {
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _controller3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    )..repeat(reverse: true);

    final delay = Duration(milliseconds: 350);
    _controller2.animateTo(
      1.0,
      duration: Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
    _controller3.animateTo(
      1.0,
      duration: Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
    Future.delayed(delay, () {
      _controller2.repeat(reverse: true);
    });
    Future.delayed(delay * 2, () {
      _controller3.repeat(reverse: true);
    });
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

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
                      'Please wait...',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Give us a moment, we’ll get you on your way.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 350),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Rescan()), // Replace LoginPage() with your actual login page widget
                          );
                        },
                        child: AnimatedBall(
                            controller: _controller1, color: Color(0xFF280072)),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          // Add functionality for clicking the ball
                        },
                        child: AnimatedBall(
                            controller: _controller2,
                            color: Color.fromARGB(255, 254, 93, 0)),
                      ),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          // Add functionality for clicking the ball
                        },
                        child: AnimatedBall(
                            controller: _controller3, color: Color(0xFF280072)),
                      ),
                    ],
                  ),
                  SizedBox(height: 350),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Scanned()), // Replace LoginPage() with your actual login page widget
                      );
                    },
                    child: Text(
                      'If the details are correct, click the confirm button above.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
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

class AnimatedBall extends StatelessWidget {
  final AnimationController controller;
  final Color color;

  const AnimatedBall({Key? key, required this.controller, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 45 * controller.value - 12.5),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }
}

import 'package:clock_app/gradient_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Image.asset("assets/clock.png", height: 110),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText(
                  "Clock",
                  style: TextStyle(fontSize: 40),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFD1B964), Color(0xFFC2DE14)],
                  ),
                ),
                GradientText(
                  "up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFD1B964), Color(0xFFC2DE14)],
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              "created by BISWA",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

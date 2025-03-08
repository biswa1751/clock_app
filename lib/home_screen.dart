import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFC2DE14), Color(0xFFD1B964)],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TabBar(
                        tabs: [
                          Tab(text: "Time"),
                          Tab(text: "Stopwatch"),
                          Tab(text: "Timer"),
                        ],
                      ),
                      Container(
                        height: 250,
                        width: 250,
                        margin: const EdgeInsets.only(top: 50.0),
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

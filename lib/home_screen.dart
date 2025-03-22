import 'package:animated_analog_clock/animated_analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
                        child: Stack(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 40.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      DateFormat.Hm().format(DateTime.now()),
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      DateFormat(
                                        'EEE, MMMM d',
                                      ).format(DateTime.now()),
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            AnimatedAnalogClock(
                              hourHandColor: Colors.white,
                              minuteHandColor: Colors.white,
                              secondHandColor: Colors.white,
                              minuteDashColor: Colors.transparent,
                              hourDashColor: Colors.white,
                              centerDotColor: Colors.white,
                              dialType: DialType.numberAndDashes,
                              size: 300,
                            ),
                          ],
                        ),
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

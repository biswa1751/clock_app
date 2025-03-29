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
            ClockBackground(),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: TabBar(
                          unselectedLabelColor: Colors.white,
                          tabs: [
                            Tab(text: "Time"),
                            Tab(text: "Stopwatch"),
                            Tab(text: "Timer"),
                          ],
                        ),
                      ),
                      PopupMenuButton(
                        iconColor: Colors.white,
                        itemBuilder: (_) {
                          return [PopupMenuItem(child: Text("Edit"))];
                        },
                      ),
                    ],
                  ),
                  Flexible(
                    child: TabBarView(
                      children: [
                        TimeTab(),
                        Text("Stopwatch Page"),
                        Text("Timer Page"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
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
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          DateFormat('EEE, MMMM d').format(DateTime.now()),
                          style: TextStyle(fontSize: 14, color: Colors.white),
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
        ),
        DraggableScrollableSheet(
          minChildSize: 0.2,
          maxChildSize: 0.8,
          builder: (context, controller) {
            return Container(
              height: 400,
              decoration: BoxDecoration(
                color: Color(0xFFFBFBFB).withOpacity(0.5),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: ListView.builder(
                itemCount: 10,
                controller: controller,
                itemBuilder:
                    (context, index) => SwitchListTile(
                      value: true,
                      onChanged: (_) {},
                      tileColor: Colors.white,
                      title: Text(
                        "08:00",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("On weekdays"),
                    ),
              ),
            );
          },
        ),
      ],
    );
  }
}

class ClockBackground extends StatelessWidget {
  const ClockBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFC2DE14), Color(0xFFD1B964)],
        ),
      ),
    );
  }
}

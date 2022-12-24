import 'package:evention/body.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF4F4F4),
        appBar: AppBar(
          scrolledUnderElevation: 0,
          toolbarHeight: 70,
          backgroundColor: const Color(0xffF4F4F4),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: Theme.of(context).textTheme.caption,
                ),
                const Text(
                  'Michael Mensah',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Transform.scale(
                scale: 1.4,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Ionicons.person_circle_outline),
                ),
              ),
            )
          ],
        ),
        //bottom Nav Bar

        bottomNavigationBar: SizedBox(
          height: 74,
          child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                    label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_activity_outlined), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month_outlined), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_outlined), label: "message"),
              ]),
        ),

        //body
        body: const Body());
  }
}

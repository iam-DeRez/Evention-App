import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/e1.png'), fit: BoxFit.fill),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 32, left: 19),
                  child: Text(
                    "Upcoming Events",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 19),
                  child: Text(
                    "Kizz Daniel Live In Concert",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 29,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 19, bottom: 24),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(66, 238, 238, 238),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(children: const [
                        Icon(
                          Icons.calendar_today_outlined,
                          size: 13,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "28th December, 2022",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_clock_regular,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "9:00PM",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ]),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

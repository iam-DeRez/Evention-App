import 'package:evention/Events.dart';
import 'package:evention/eventsHeader.dart';
import 'package:evention/popularEvent.dart';
import 'package:evention/popularEventHeading.dart';
import 'package:evention/searchbox.dart';
import 'package:evention/upcomingEvent.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: ListView(children: const [
          SizedBox(
            height: 15,
          ),

          //search field
          SearchBox(),

          SizedBox(
            height: 32,
          ),
          //Upcoming events
          UpcomingEvents(),

          SizedBox(
            height: 42,
          ),

          //Popular Events
          PopularEventsHeading(),

          SizedBox(
            height: 20,
          ),

          PopularEvents(),

          SizedBox(
            height: 50,
          ),

          EventsHeader(),

          SizedBox(
            height: 20,
          ),

          Events(),
        ]),
      ),
    );
  }
}

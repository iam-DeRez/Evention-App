import 'package:evention/monthsDetails.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
  const Events({super.key});

  @override
  Widget build(BuildContext context) {
    List<MonthDetails> ListDetails = [
      MonthDetails(
          image: "images/e5.png",
          title: "Christmas Grouping",
          date: "10:18pm . 21 Guest"),
      MonthDetails(
          image: "images/e6.png",
          title: "AP NYE in Accra",
          date: "06:18pm . 60 Guest"),
      MonthDetails(
          image: "images/e8.png",
          title: "TEDxAccra",
          date: "08:15pm . 2000 Guest"),
      MonthDetails(
          image: "images/e9.png",
          title: "Best Day Party Ever Accra",
          date: "12:18am . 100 Guest"),
      MonthDetails(
          image: "images/e10.png",
          title: "Drip Party - Glow in the Dark",
          date: "07:00pm . 5000 Guest"),
    ];

    return Container(
      child: Column(
          children: List.generate(ListDetails.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image.asset(ListDetails[index].image),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Text(
                        ListDetails[index].title,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 3),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_clock_regular,
                            size: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          ListDetails[index].date,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        );
      })),
    );
  }
}

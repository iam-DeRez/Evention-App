import 'package:evention/Eventdetails.dart';
import 'package:flutter/material.dart';

class PopularEvents extends StatelessWidget {
  const PopularEvents({super.key});

  @override
  Widget build(BuildContext context) {
    List<PopEvents> Popevents = [
      PopEvents(
          image: "images/e3.png",
          title: "Barcamp Accra 2022",
          date: "Sun 18 December, 9:00pm",
          location: "TBD . Greater Accra",
          price: "GHC 40.00"),
      PopEvents(
          image: "images/e2.png",
          title: "Welcome2Ghana",
          date: "Wed 21 December, 9:00pm",
          location: "Garage Lounge . Greater Accra",
          price: "GHC 30.00"),
      PopEvents(
          image: "images/e4.png",
          title: "All-Black Party",
          date: "Sun 25 December, 9:00pm",
          location: "Bloombar . Greater Accra",
          price: "GHC 100.00"),
      PopEvents(
          image: "images/e7.png",
          title: "Tech Connect",
          date: "Mon 28 December, 9:00pm",
          location: "Kempinski Hotel . Greater Accra",
          price: "GHC 10.00")
    ];

    return Container(
      height: 260.0,
      child: ListView(
          // Widget next line does the trick.
          scrollDirection: Axis.horizontal,
          children: List.generate(
            Popevents.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  width: 200.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Popevents[index].image),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      //texts
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 11),
                        child: Text(
                          Popevents[index].title,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          Popevents[index].date,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 4),
                        child: Text(
                          Popevents[index].location,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),

                      //prices
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xfffbf2ea),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 4, right: 8, bottom: 4),
                            child: Text(
                              Popevents[index].price,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd47b2f)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}

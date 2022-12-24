import 'package:flutter/material.dart';

class PopularEventsHeading extends StatelessWidget {
  const PopularEventsHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Popular Events",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              Text(
                "Show all",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              )
            ]),
      ),
    );
  }
}

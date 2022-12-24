import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  borderSide: BorderSide.none),
              hintText: "Search event..",
              filled: true,
              hintStyle: const TextStyle(fontSize: 13),
              prefixIcon: const Icon(
                Ionicons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                Icons.tune,
                color: Colors.grey,
              ),
              fillColor: Colors.white),
        ),
      ),
    );
  }
}

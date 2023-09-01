import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search your car",
            fillColor: const Color.fromRGBO(255, 255, 255, 1),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(color: Colors.white),
            ),
            prefixIcon: const Icon(Ionicons.search_outline),
            suffixIcon: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                icon:
                    const Icon(Ionicons.filter, color: Colors.white),
                onPressed: () {},
              ),
            )),
      ),
    );
  }
}

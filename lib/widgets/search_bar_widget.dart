import 'package:flutter/material.dart';

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
            fillColor: const Color.fromRGBO(240, 240, 240, 1),
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
            prefixIcon: const Icon(Icons.search),
            suffixIcon: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                icon:
                    const Icon(Icons.filter_alt_outlined, color: Colors.white),
                onPressed: () {},
              ),
            )),
      ),
    );
  }
}

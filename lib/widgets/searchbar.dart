import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        suffixIcon: Container(
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromRGBO(243, 99, 31, 1),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.search_rounded,
              size: 30,
            ),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        filled: true,
        fillColor: const Color.fromRGBO(113, 117, 128, 0.856),
        hintText: "Podcast...",
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 221, 221, 221),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:podcast_app/widgets/categories.dart';
import 'package:podcast_app/widgets/searchbar.dart';

class SearchAndCategoriesCard extends StatelessWidget {
  const SearchAndCategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .35,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 185, 185, 185),
            Color.fromARGB(255, 114, 113, 113),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBar(),
          const Divider(
            height: 35,
            thickness: .75,
            color: Color.fromARGB(255, 199, 199, 199),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              "Your Categories",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Category(category: "UI"),
              Category(category: "UX"),
              Category(category: "Logo"),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Category(category: "Art"),
              Category(category: "Idea"),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                width: MediaQuery.of(context).size.width / 4 - 10,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "+",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:podcast_app/widgets/home page widgets/podcasts_list_and_continue_listening.dart';
import 'package:podcast_app/widgets/home page widgets/search_and_categories_card.dart';
import 'package:podcast_app/widgets/home page widgets/title_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 29,
        selectedLabelStyle: const TextStyle(color: Colors.deepOrange),
        selectedItemColor: Colors.deepOrange,
        items: const [
          BottomNavigationBarItem(
            label: " ",
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: " ",
            icon: Icon(
              Icons.headset_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: " ",
            icon: Icon(
              Icons.message,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleRow(),
            SearchAndCategoriesCard(),
            Text(
              "UI Podcasts",
              style: TextStyle(
                fontSize: 21,
              ),
            ),
            PodcastsList(
              title: "UI Narrative",
              subtitle: "Podtail",
              bgcolor: Colors.deepOrange,
              icon: Icons.pause_rounded,
              image: "images/img1.png",
            ),
            PodcastsList(
              title: "UX Podcast",
              subtitle: "Announcer Name",
              bgcolor: Colors.grey,
              icon: Icons.play_arrow_rounded,
              image: "images/img2.png",
            ),
            ContinueListining(),
          ],
        ),
      ),
    );
  }
}

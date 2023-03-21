import 'package:flutter/material.dart';
import 'package:podcast_app/widgets/podcasts_list_and_continue_listening.dart';
import 'package:podcast_app/widgets/search_and_categories_card.dart';
import 'package:podcast_app/widgets/title_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(25),
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

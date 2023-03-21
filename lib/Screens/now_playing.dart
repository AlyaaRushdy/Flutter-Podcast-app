import 'package:flutter/material.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/back_and_settings_row.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/fav_download_and_share_row.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/playing_image.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: Column(
          children: [
            const BackAndSettingsRow(),
            const PlayingImage(),
            const Text(
              "Empasizing with users",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "UI Narrative: UI/UX Design Podcast",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 35),
            const FavDownloadAndShareRow()
          ],
        ),
      ),
    );
  }
}

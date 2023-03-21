import 'package:flutter/material.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/back_and_settings_row.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/fav_download_and_share_row.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/playing_image.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/title_and_channel_name.dart';

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
            const TitleAndChannelName(),
            const SizedBox(height: 35),
            const FavDownloadAndShareRow()
          ],
        ),
      ),
    );
  }
}

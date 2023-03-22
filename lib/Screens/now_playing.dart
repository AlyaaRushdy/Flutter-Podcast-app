import 'package:flutter/material.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/back_and_settings_row.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/backward_pause_and_forward_row.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/fav_download_and_share_row.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/next_up.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/playing_image.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/time_slider.dart';
import 'package:podcast_app/widgets/NowPlayingWidgets/title_and_channel_name.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: const [
                BackAndSettingsRow(),
                PlayingImage(),
                TitleAndChannelName(),
                SizedBox(height: 35),
                FavDownloadAndShareRow(),
                TimeSlider(),
                BackwardsPauseAndForwardRow(),
              ],
            ),
          ),
          const NextUp(),
        ],
      ),
    );
  }
}

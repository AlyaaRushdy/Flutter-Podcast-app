import 'package:flutter/material.dart';

class TitleAndChannelName extends StatelessWidget {
  const TitleAndChannelName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Empasizing with users",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 12),
        Text(
          "UI Narrative: UI/UX Design Podcast",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}

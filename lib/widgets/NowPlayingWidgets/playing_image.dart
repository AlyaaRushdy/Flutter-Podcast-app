import 'package:flutter/material.dart';

class PlayingImage extends StatelessWidget {
  const PlayingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 25),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(3, 10),
            color: Colors.deepOrange.withOpacity(.5),
          ),
        ],
      ),
      child: Image.asset(
        "images/bigimg.png",
        width: 250,
        height: 250,
        fit: BoxFit.fill,
      ),
    );
  }
}

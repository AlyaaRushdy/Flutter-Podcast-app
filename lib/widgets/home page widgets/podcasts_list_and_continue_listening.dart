import 'package:flutter/material.dart';

class PodcastsList extends StatelessWidget {
  const PodcastsList({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.bgcolor,
    this.titleColor = Colors.white,
  });

  final String title, subtitle, image;
  final Color bgcolor, titleColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgcolor,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ContinueListining extends StatelessWidget {
  const ContinueListining({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 185, 185, 185),
            Color.fromARGB(255, 114, 113, 113),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        children: [
          Image.asset('images/img1.png'),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Empasizing with users",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "9:32 / 34:18",
                style: TextStyle(
                  color: Color.fromARGB(255, 211, 211, 211),
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.deepOrange,
            ),
            child: const Icon(
              Icons.pause_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

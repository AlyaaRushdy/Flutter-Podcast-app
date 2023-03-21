import 'package:flutter/material.dart';

class FavDownloadAndShareRow extends StatelessWidget {
  const FavDownloadAndShareRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 240, 239, 239),
          ),
          child: const Icon(
            Icons.favorite_rounded,
            color: Colors.red,
            size: 28,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(226, 240, 239, 239),
          ),
          child: const Icon(
            Icons.file_download_outlined,
            color: Colors.grey,
            size: 28,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 240, 239, 239),
          ),
          child: const Icon(
            Icons.share_outlined,
            color: Colors.grey,
            size: 28,
          ),
        ),
      ],
    );
  }
}

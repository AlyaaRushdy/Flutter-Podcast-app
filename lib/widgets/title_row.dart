import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text(
              "P",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              "o",
              style: TextStyle(
                fontSize: 26,
                color: Colors.orange,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              "dcast",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.orange,
                Colors.deepOrange,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              image: AssetImage("images/girl.png"),
            ),
          ),
        ),
      ],
    );
  }
}

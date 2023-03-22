import 'package:flutter/material.dart';

class BackwardsPauseAndForwardRow extends StatelessWidget {
  const BackwardsPauseAndForwardRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("images/back.png"),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepOrange,
            boxShadow: const [
              BoxShadow(
                blurRadius: 5,
                offset: Offset(0, 7),
                color: Colors.deepOrange,
              ),
            ],
          ),
          child: const Icon(
            Icons.pause_rounded,
            color: Colors.white,
            size: 35,
          ),
        ),
        Image.asset("images/next.png"),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class NextUp extends StatelessWidget {
  const NextUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Color.fromARGB(255, 136, 136, 136),
      ),
      width: MediaQuery.of(context).size.width,
      height: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 85,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 236, 236, 236),
            ),
          ),
          const Text(
            "Next Up",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BackAndSettingsRow extends StatelessWidget {
  const BackAndSettingsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            child: const Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          child: Image.asset(
            "images/setting.png",
          ),
        ),
      ],
    );
  }
}

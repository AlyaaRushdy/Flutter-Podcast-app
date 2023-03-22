import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class TimeSlider extends StatefulWidget {
  const TimeSlider({
    super.key,
  });

  @override
  State<TimeSlider> createState() => _TimeSliderState();
}

class _TimeSliderState extends State<TimeSlider> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(_value.toStringAsFixed(2)),
          Expanded(
            child: SfSlider(
              min: 0,
              max: 21.43,
              value: _value,
              activeColor: Colors.deepOrange,
              inactiveColor: Colors.grey,
              thumbIcon: const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 7.5,
                ),
              ),
              onChanged: (dynamic value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
          const Text("21:43"),
        ],
      ),
    );
  }
}

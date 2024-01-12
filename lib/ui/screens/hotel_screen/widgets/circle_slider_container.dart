import 'package:flutter/material.dart';

class CircleSliderContainer extends StatelessWidget {
  const CircleSliderContainer({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7,
      height: 7,
      margin: const EdgeInsets.all(2.5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
    );
  }
}

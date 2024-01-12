import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';

class BottomInfoContainerHotel extends StatelessWidget {
  const BottomInfoContainerHotel({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width,
        height: 300,
        decoration: const BoxDecoration(
          color: ApplicationColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ));
  }
}

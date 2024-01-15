import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';

class AddTourist extends StatelessWidget {
  const AddTourist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ApplicationColors.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      width: double.infinity,
      constraints: const BoxConstraints(maxHeight: double.infinity),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Expanded(
              child: Text(
                "Добавить туриста",
                style: ApplicationTexts.largeTextStyle,
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<HotelBloc>().add(AddTouristEvent());
              },
              child: SvgPicture.asset("assets/images/add_tourist_img.svg"),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/tourist.dart';

class TouristsInfo extends StatelessWidget {
  const TouristsInfo({
    super.key,
    required this.state,
  });
  final TouristsState state;
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
      child: Column(
        children: [
          for (int i = 0; i < state.tourists.length; i++)
            Tourist(number: state.tourists[i].number),
        ],
      ),
    );
  }
}

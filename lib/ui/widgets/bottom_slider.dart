import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';

import '../screens/hotel_screen/widgets/circle_slider_container.dart';

class BottomSlider extends StatelessWidget {
  const BottomSlider({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 17,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: BlocBuilder<HotelBloc, HotelState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < images.length; i++)
                  if (state is ChangedIndexState)
                    CircleSliderContainer(
                      color: state.curentIndex == i
                          ? Colors.black
                          : Colors.black38,
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}

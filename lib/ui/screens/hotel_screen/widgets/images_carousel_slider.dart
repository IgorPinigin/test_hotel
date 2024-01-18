import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/constants/colors.dart';

import '../../../widgets/bottom_slider.dart';
import 'image_rounded_container.dart';

class ImagesCarouselSlider extends StatelessWidget {
  const ImagesCarouselSlider({
    super.key,
    required this.images,
  });

  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ApplicationColors.whiteColor,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    context.read<HotelBloc>().add(PageIndexChangeEvent(index))),
            items: [
              for (int i = 0; i < images.length; i++)
                ImageRoundedContainer(
                  image: images[i],
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: BottomSlider(images: images),
          ),
        ],
      ),
    );
  }
}

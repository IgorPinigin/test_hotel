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
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
      "https://reputationprotectiononline.com/wp-content/uploads/2017/12/hotel-generic.jpg",
      "https://travelata-a.akamaihd.net/thumbs/1920x1080/upload/2019_01/content_hotel_5c2c8e471ef0e7.62765995.jpg",
    ];
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
                  size: size,
                  image: images[i],
                ),
            ],
          ),
          BottomSlider(images: images),
        ],
      ),
    );
  }
}

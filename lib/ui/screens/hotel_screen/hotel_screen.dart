// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/logic/models/hotel.dart';
import 'package:test_hotel/logic/services/api.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/bottom_info_container_hotel.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/button_select_room.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/images_carousel_slider.dart';

import 'widgets/top_info_container_hotel.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HotelBloc>().add(PageIndexChangeEvent(0));
    return Scaffold(
      backgroundColor: ApplicationColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: ApplicationColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ApplicationTexts.hotel,
          style: ApplicationTexts.headlineStyle,
        ),
      ),
      body: SingleChildScrollView(child: _body()),
    );
  }

  FutureBuilder _body() {
    final apiService =
        ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder(
        future: apiService.getHotel(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final Hotel hotel = snapshot.data!;
            return HotelContainer(
              hotel: hotel,
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

class HotelContainer extends StatelessWidget {
  const HotelContainer({
    Key? key,
    required this.hotel,
  }) : super(key: key);
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagesCarouselSlider(images: hotel.imageUrls!),
        TopInfoContainerHotel(
          hotel: hotel,
        ),
        const Padding(padding: EdgeInsets.only(top: 8)),
        BottomInfoContainerHotel(hotel: hotel),
        const Padding(padding: EdgeInsets.only(top: 12)),
        ButtonSelectRoom(
          name: hotel.name!,
        ),
      ],
    );
  }
}

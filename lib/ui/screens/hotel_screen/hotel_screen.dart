import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/bottom_info_container_hotel.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/button_select_room.dart';
import '../../widgets/small_cards_info.dart';
import 'widgets/top_info_container_hotel.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopInfoContainerHotel(size: size),
            const Padding(padding: EdgeInsets.only(top: 8)),
            BottomInfoContainerHotel(size: size),
            ButtonSelectRoom(size: size),
          ],
        ),
      ),
    );
  }
}

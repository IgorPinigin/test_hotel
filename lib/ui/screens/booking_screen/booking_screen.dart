import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/add_tourist.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/data_booking_container.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/tourists_info.dart';
import 'package:test_hotel/ui/widgets/name_and_location.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    context.read<HotelBloc>().add(LoadTouristEvent());
    return Scaffold(
      backgroundColor: ApplicationColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.go('/room/$text');
            },
            icon: SvgPicture.asset("assets/images/arrow_right_img.svg")),
        backgroundColor: ApplicationColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Бронирование",
          style: ApplicationTexts.headlineStyle,
        ),
      ),
      body: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          if (state is TouristsState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  Container(
                    decoration: const BoxDecoration(
                      color: ApplicationColors.whiteColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    width: double.infinity,
                    constraints:
                        const BoxConstraints(maxHeight: double.infinity),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: NameAndLocationHotel(),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  const DataBookingContainer(),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  TouristsInfo(
                    state: state,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  const AddTourist(),
                ],
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/blocs/email_bloc/email_validator_bloc.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/logic/models/booking.dart';
import 'package:test_hotel/logic/services/api.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/add_tourist.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/application_text_field.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/data_booking_container.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/email_text_field.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/phone_number_text_field.dart';
import 'package:test_hotel/ui/widgets/name_and_location.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HotelBloc>().add(LoadTouristEvent());
    return Scaffold(
      backgroundColor: ApplicationColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.go('/room/text');
            },
            icon: SvgPicture.asset("assets/images/arrow_back_img.svg")),
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
              child: _body(),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  FutureBuilder _body() {
    final apiService =
        ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder(
        future: apiService.getBooking(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final Booking booking = snapshot.data!;
            return BookingContainer(
              booking: booking,
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

class BookingContainer extends StatelessWidget {
  const BookingContainer({
    super.key,
    required this.booking,
  });
  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          constraints: const BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: NameAndLocationHotel(
              rating: 5,
              name: booking.hotelName!,
              adress: booking.hotelAdress!,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 8)),
        DataBookingContainer(
          booking: booking,
        ),
        const Padding(padding: EdgeInsets.only(top: 8)),
        BuyerInfo(),
        // TouristsInfo(
        //   state: state,
        // ),
        const Padding(padding: EdgeInsets.only(top: 8)),
        const AddTourist(),
      ],
    );
  }
}

class BuyerInfo extends StatelessWidget {
  const BuyerInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailValidatorBloc(),
      child: Container(
          decoration: const BoxDecoration(
            color: ApplicationColors.whiteColor,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          width: double.infinity,
          constraints: const BoxConstraints(maxHeight: double.infinity),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Информация о покупателе",
                    style: ApplicationTexts.largeTextStyle,
                  ),
                ),
                PhoneNumberTextField(),
                Padding(padding: EdgeInsets.only(top: 8)),
                EmailTextField(),
                Padding(padding: EdgeInsets.only(top: 8)),
                Text(
                  "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту",
                  style: ApplicationTexts.greyTextStyle
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                Padding(padding: EdgeInsets.only(top: 16)),
              ],
            ),
          )),
    );
  }
}

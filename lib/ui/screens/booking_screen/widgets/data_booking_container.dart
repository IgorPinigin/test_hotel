import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/logic/models/booking.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/row_with_data_booking.dart';

class DataBookingContainer extends StatelessWidget {
  const DataBookingContainer({
    super.key,
    required this.booking,
  });

  final Booking booking;

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
          RowWithDataBooking(
            constText: "Вылет из",
            text: booking.departure!,
          ),
          RowWithDataBooking(
            constText: "Страна, город",
            text: booking.arrivalCountry!,
          ),
          RowWithDataBooking(
            constText: "Даты",
            text: "${booking.tourDateStart}-${booking.tourDateStop}",
          ),
          RowWithDataBooking(
            constText: "Кол-во ночей",
            text: booking.numberOfNights.toString(),
          ),
          RowWithDataBooking(
            constText: "Отель",
            text: booking.hotelName!,
          ),
          RowWithDataBooking(
            constText: "Номер",
            text: booking.room!,
          ),
          RowWithDataBooking(
            constText: "Питание",
            text: booking.nutrition!,
          ),
          const Padding(padding: EdgeInsets.only(top: 16)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/ui/screens/booking_screen/widgets/row_with_data_booking.dart';

class DataBookingContainer extends StatelessWidget {
  const DataBookingContainer({
    super.key,
  });

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
      child: const Column(
        children: [
          RowWithDataBooking(
            constText: "Вылет из",
            text: "Москва",
          ),
          RowWithDataBooking(
            constText: "Страна, город",
            text: "Москва",
          ),
          RowWithDataBooking(
            constText: "Даты",
            text: "Москва",
          ),
          RowWithDataBooking(
            constText: "Кол-во ночей",
            text: "Москва",
          ),
          RowWithDataBooking(
            constText: "Отель",
            text: "Москва",
          ),
          RowWithDataBooking(
            constText: "Номер",
            text:
                "МоскваМоскваМоскваМоскваМоскваМоскваМоскваМоскваМоскваМосква",
          ),
          RowWithDataBooking(
            constText: "Питание",
            text: "Москва",
          ),
          Padding(padding: EdgeInsets.only(top: 16)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/logic/models/room.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/images_carousel_slider.dart';
import 'package:test_hotel/ui/screens/room_screen/widgets/more_detailed_room.dart';
import 'package:test_hotel/ui/widgets/application_button.dart';
import 'package:test_hotel/ui/widgets/price_text.dart';
import 'package:test_hotel/ui/widgets/small_cards_info.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({super.key, required this.room});
  final Room room;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
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
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              ImagesCarouselSlider(
                images: room.imageUrls!,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 8)),
                    RichText(
                      text: TextSpan(
                          text: room.name!,
                          style: ApplicationTexts.largeTextStyle),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 8)),
                    SmallCardsInfo(
                      facts: room.peculiarities!,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 8)),
                    const MoreDetailedRoom(),
                    const Padding(padding: EdgeInsets.only(top: 16)),
                    PriceText(
                      textFrom: '',
                      price: room.price!,
                      text: room.pricePer!,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 16)),
                    ApplicationButton(
                      text: 'Выбрать номер',
                      onPressed: () {
                        context.go("/booking");
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

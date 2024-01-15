import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/images_carousel_slider.dart';
import 'package:test_hotel/ui/screens/room_screen/widgets/more_detailed_room.dart';
import 'package:test_hotel/ui/widgets/application_button.dart';
import 'package:test_hotel/ui/widgets/price_text.dart';
import 'package:test_hotel/ui/widgets/small_cards_info.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({super.key, required this.size});

  final Size size;

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
              ImagesCarouselSlider(size: size),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                          text: "Стандартный с видом на бассейн или сад",
                          style: ApplicationTexts.largeTextStyle),
                    ),
                    const SmallCardsInfo(
                      facts: ["Все включено", "Кондиционер"],
                    ),
                    const MoreDetailedRoom(),
                    const PriceText(text: ''),
                    ApplicationButton(
                      text: 'Выбрать номер',
                      onPressed: () {
                        String text = 'hotel';
                        context.go("/booking/$text");
                      },
                      size: size,
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

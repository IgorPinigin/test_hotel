import 'package:flutter/material.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import '../../../widgets/small_cards_info.dart';
import 'triple_short_information.dart';

class BottomInfoContainerHotel extends StatelessWidget {
  const BottomInfoContainerHotel({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    final List<String> facts = [
      "3-я линия",
      "Платный Wi-Fi в фойе",
      "30 км до аэропорта",
      "1 км до пляжа"
    ];
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
        color: ApplicationColors.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              ApplicationTexts.aboutHotel,
              style: ApplicationTexts.largeTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: SmallCardsInfo(facts: facts),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: RichText(
                text: const TextSpan(
                    text:
                        'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                    style: ApplicationTexts.infoAboutHotelStyle),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TripleShortInformation(
                size: size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

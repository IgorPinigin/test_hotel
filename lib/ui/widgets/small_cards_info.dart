import 'package:flutter/material.dart';
import 'package:test_hotel/ui/screens/hotel_screen/widgets/fact_about_hotel_container.dart';

class SmallCardsInfo extends StatelessWidget {
  const SmallCardsInfo({
    super.key,
    required this.facts,
  });

  final List<String> facts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (int i = 0; i < facts.length; i++)
            FactAboutHotelContainer(text: facts[i]),
        ],
      ),
    );
  }
}

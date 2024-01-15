import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/ui/screens/room_screen/widgets/room_card.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ApplicationColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.go('/');
            },
            icon: SvgPicture.asset("assets/images/arrow_right_img.svg")),
        backgroundColor: ApplicationColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          text,
          style: ApplicationTexts.headlineStyle,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return RoomCard(
            size: size,
          );
        },
        itemCount: 2,
      ),
    );
  }
}

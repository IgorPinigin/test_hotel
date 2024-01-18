import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/constants/colors.dart';
import 'package:test_hotel/constants/texts.dart';
import 'package:test_hotel/logic/models/hotel.dart';
import 'package:test_hotel/logic/models/room.dart';
import 'package:test_hotel/logic/services/api.dart';
import 'package:test_hotel/ui/screens/room_screen/widgets/room_card.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ApplicationColors.backgroundColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                context.go('/');
              },
              icon: SvgPicture.asset("assets/images/arrow_back_img.svg")),
          backgroundColor: ApplicationColors.whiteColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            text,
            style: ApplicationTexts.headlineStyle,
          ),
        ),
        body: _body());
  }

  FutureBuilder _body() {
    final apiService =
        ApiService(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder(
        future: apiService.getRooms(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final List<Room> rooms = snapshot.data!;
            return _rooms(rooms);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Widget _rooms(List<Room> rooms) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return RoomCard(
          room: rooms[index],
        );
      },
      itemCount: rooms.length,
    );
  }
}

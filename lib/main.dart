import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_hotel/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:test_hotel/ui/screens/hotel_screen/hotel_screen.dart';

import 'ui/screens/booking_screen/booking_screen.dart';
import 'ui/screens/room_screen/room_screen.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (BuildContext context, GoRouterState state) {
      return const HotelScreen();
    },
  ),
  GoRoute(
    path: "/room/:text",
    builder: (BuildContext context, GoRouterState state) {
      return RoomScreen(
        text: state.pathParameters["text"].toString(),
      );
    },
  ),
  GoRoute(
    path: "/booking/:text",
    builder: (BuildContext context, GoRouterState state) {
      return BookingScreen(
        text: state.pathParameters["text"].toString(),
      );
    },
  ),
]);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelBloc(),
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}

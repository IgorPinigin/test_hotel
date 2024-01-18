import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_hotel/logic/models/booking.dart';
import 'package:test_hotel/logic/models/hotel.dart';
import 'package:test_hotel/logic/models/room.dart';

part 'api.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('https://run.mocky.io/v3/73436b14-8acd-4690-8009-1963a0e160f9')
  Future<Hotel> getHotel();

  @GET('https://run.mocky.io/v3/c9398fba-9c33-44a6-b0b1-6060718926c6')
  Future<List<Room>> getRooms();

  @GET('https://run.mocky.io/v3/ed1a3e50-fd69-422e-8098-604fc49e0b97')
  Future<Booking> getBooking();
}

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test_hotel/logic/models/hotel.dart';

part 'api.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('https://run.mocky.io/v3/75000507-da9a-43f8-a618-df698ea7176d')
  Future<List<Hotel>> getHotel();
}

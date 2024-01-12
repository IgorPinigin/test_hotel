part of 'hotel_bloc.dart';

@immutable
abstract class HotelState {}

class HotelInitial extends HotelState {}

class ChangedIndexState extends HotelState {
  final int curentIndex;

  ChangedIndexState({required this.curentIndex});
}

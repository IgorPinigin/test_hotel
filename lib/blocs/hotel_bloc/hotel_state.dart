// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'hotel_bloc.dart';

@immutable
abstract class HotelState extends Equatable {}

class HotelInitial extends HotelState {
  @override
  List<Object?> get props => [];
}

class ChangedIndexState extends HotelState {
  final int curentIndex;

  ChangedIndexState({required this.curentIndex});

  @override
  List<Object?> get props => [curentIndex];
}

class TouristsState extends HotelState {
  final List<Tourist> tourists;
  TouristsState({
    this.tourists = const <Tourist>[],
  });

  @override
  List<Object?> get props => [tourists];
}

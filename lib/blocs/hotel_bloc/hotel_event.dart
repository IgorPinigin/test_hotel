// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'hotel_bloc.dart';

@immutable
abstract class HotelEvent {}

class PageIndexChangeEvent extends HotelEvent {
  final int pageIndex;

  PageIndexChangeEvent(this.pageIndex);
}

class PageIndexLoadedEvent extends HotelEvent {}

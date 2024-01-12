import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc() : super(HotelInitial()) {
    on<PageIndexChangeEvent>(_changeIndexImage);
  }

  void _changeIndexImage(PageIndexChangeEvent event, Emitter<HotelState> emit) {
    emit(ChangedIndexState(curentIndex: event.pageIndex));
  }
}

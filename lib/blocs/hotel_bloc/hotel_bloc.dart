import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/models/tourist.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc() : super(HotelInitial()) {
    on<PageIndexChangeEvent>(_changeIndexImage);
    // on<AddTouristEvent>(_addTourist);
    on<LoadTouristEvent>(_loadTourist);
  }

  void _changeIndexImage(PageIndexChangeEvent event, Emitter<HotelState> emit) {
    emit(ChangedIndexState(curentIndex: event.pageIndex));
  }

  int id = 1;
  // void _addTourist(AddTouristEvent event, Emitter<HotelState> emit) {
  //   final List<String> numbers = [
  //     "Первый",
  //     "Второй",
  //     "Третий",
  //     "Четвертый",
  //     "Пятый",
  //     "Шестой",
  //   ];
  //   final state = this.state;
  //   if (id < 6) {
  //     emit(
  //       TouristsState(
  //         tourists: List.from(state.tourists)
  //           ..add(
  //             Tourist(
  //               id: id,
  //               number: numbers[id - 1],
  //             ),
  //           ),
  //       ),
  //     );
  //   }
  //   id++;
  // }

  void _loadTourist(LoadTouristEvent event, Emitter<HotelState> emit) {
    emit(TouristsState());
  }
}

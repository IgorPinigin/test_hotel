// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Tourist extends Equatable {
  final int id;
  final String number;
  bool? isShow;

  Tourist({required this.id, required this.number, this.isShow}) {
    isShow = isShow ?? false;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, number, isShow];

  Tourist copyWith({
    int? id,
    String? number,
    bool? isShow,
  }) {
    return Tourist(
      id: id ?? this.id,
      number: number ?? this.number,
      isShow: isShow ?? this.isShow,
    );
  }
}

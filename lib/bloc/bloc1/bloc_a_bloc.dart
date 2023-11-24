import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../enums/acts.dart';

part 'bloc_a_event.dart';
part 'bloc_a_state.dart';

class ABloc extends Bloc<AEvent, AState> {

  var act = Acts.none;
  double height = 0, width = 0;

  ABloc() : super(AInitial()) {
    on<AEvent>((event, emit) {

    });

    on<OpenWindow>((event, emit) {
      act = event.act;
      height = event.height;
      width = event.width;
      emit(ExecuteOpenWindow(act: act, height: height, width: width));
    });

    on<CloseWindow>((event, emit) {
      act = event.act;
      height = event.height;
      width = event.width;
      emit(ExecuteCloseWindow(act: act, height: height, width: width));
    });

  }
}

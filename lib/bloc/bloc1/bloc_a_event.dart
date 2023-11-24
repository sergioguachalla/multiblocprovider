part of 'bloc_a_bloc.dart';

abstract class AEvent extends Equatable {
  const AEvent();
}

class OpenWindow extends AEvent {

  var act = Acts.none;
  double height, width;

  OpenWindow({required this.act, required this.height, required this.width});

  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class OpenSecondWindow extends AEvent {

  var act = Acts.none;
  double height, width;

  OpenSecondWindow({required this.act, required this.height, required this.width});

  @override
  // TODO: implement props
  List<Object?> get props => [];


}

class CloseWindow extends AEvent {

  var act = Acts.none;

  double height, width;


  CloseWindow({required this.act, required this.height, required this.width});

  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class CloseSecondWindow extends AEvent {

  var act = Acts.none;

  double height, width;

  CloseSecondWindow({required this.act, required this.height, required this.width});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
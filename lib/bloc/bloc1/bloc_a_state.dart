part of 'bloc_a_bloc.dart';

abstract class AState extends Equatable {
  const AState();
}

class AInitial extends AState {
  @override
  List<Object> get props => [];
}
class ExecuteOpenWindow extends AState {
  var act = Acts.none;
  double height, width;


  ExecuteOpenWindow({required this.act, required this.height, required this.width});

  @override
  List<Object> get props => [act, height, width];
}

class ExecuteCloseWindow extends AState {
  var act = Acts.none;
  double height, width;

  ExecuteCloseWindow({required this.act, required this.height, required this.width});

  @override
  List<Object?> get props => [act, height, width];


}
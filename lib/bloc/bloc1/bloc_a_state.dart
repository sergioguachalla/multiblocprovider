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
  double height, width, secondHeight, secondWidth;


  ExecuteOpenWindow({required this.act, required this.height, required this.width, required this.secondHeight, required this.secondWidth});

  @override
  List<Object> get props => [act, height, width, secondHeight, secondWidth];
}

class ExecuteCloseWindow extends AState {
  var act = Acts.none;
  double height, width, secondHeight, secondWidth;

  ExecuteCloseWindow({required this.act, required this.height, required this.width, required this.secondHeight, required this.secondWidth });

  @override
  List<Object?> get props => [act, height, width, secondHeight, secondWidth];


}

class ExecuteOpenSecondWindow extends AState {
  var act = Acts.none;
  double height, width, secondHeight, secondWidth;

  ExecuteOpenSecondWindow(
      {required this.act, required this.height, required this.width, required this.secondHeight, required this.secondWidth});

  @override
  List<Object?> get props => [act, height, width];
}

class ExecuteCloseSecondWindow extends AState {
  var act = Acts.none;
  double height, width, secondHeight, secondWidth;

  ExecuteCloseSecondWindow(
      {required this.act, required this.height, required this.width, required this.secondHeight, required this.secondWidth});

  @override
  List<Object?> get props => [act, height, width, secondHeight, secondWidth];
}
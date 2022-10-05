part of 'home_cubit.dart';

@immutable
abstract class HomeState {
  bool showActions = false;
}

class HomeInitial extends HomeState {
  @override
  bool showActions;

  HomeInitial({required this.showActions});
}

part of 'app_cubit.dart';

@immutable
abstract class AppState {
  bool showModal = false;
}

class AppInitial extends AppState {
  @override
  bool showModal = false;

  AppInitial({required this.showModal});
}

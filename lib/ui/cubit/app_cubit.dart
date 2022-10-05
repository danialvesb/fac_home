import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial(showModal: false));

  void toogle() {
    emit(AppInitial(showModal: !state.showModal));
  }
}

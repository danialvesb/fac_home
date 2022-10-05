import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial(showActions: false));

  void toggle() {
    emit(HomeInitial(showActions: !state.showActions));
  }
}

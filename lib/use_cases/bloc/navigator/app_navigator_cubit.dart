import 'package:bloc/bloc.dart';

part 'app_navigator_state.dart';

class AppNavigatorCubit extends Cubit<AppNavigatorState> {
  AppNavigatorCubit() : super(AppNavigatorStateInitial());

  void home() {
    emit(AppNavigatorStateInitial());
  }

  void bubble() {
    emit(AppNavigatorStateBubble());
  }

  void racing() {
    emit(AppNavigatorStateRacing());
  }

  void random() {
    emit(AppNavigatorStateRandom());
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

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

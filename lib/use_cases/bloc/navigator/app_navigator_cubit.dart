import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'app_navigator_state.dart';

part 'app_navigator_cubit.freezed.dart';

class AppNavigatorCubit extends Cubit<AppNavigatorState> {
  AppNavigatorCubit() : super(const AppNavigatorState.initial());

  void home() {
    emit(const AppNavigatorState.initial());
  }

  void bubble() {
    emit(const AppNavigatorState.bubble());
  }

  void racing() {
    emit(const AppNavigatorState.racing());
  }

  void random() {
    emit(const AppNavigatorState.random());
  }
}

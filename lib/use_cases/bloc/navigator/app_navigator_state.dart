part of 'app_navigator_cubit.dart';

@freezed
class AppNavigatorState with _$AppNavigatorState {
  const factory AppNavigatorState.initial() = AppNavigatorStateInitail;
  const factory AppNavigatorState.bubble() = AppNavigatroStateBubble;
  const factory AppNavigatorState.racing() = AppNavigatorStateRacing;
  const factory AppNavigatorState.random() = AppNavigatorStateRandom;
}
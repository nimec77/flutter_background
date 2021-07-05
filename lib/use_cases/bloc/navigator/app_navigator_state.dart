part of 'app_navigator_cubit.dart';

abstract class AppNavigatorState {}

class AppNavigatorStateInitial extends AppNavigatorState {

  @override
  String toString() => 'AppNavigatorStateInitial';

  @override
  bool operator ==(Object other) {
    return identical(this, other) || other is AppNavigatorStateInitial;
  }

  @override
  int get hashCode => toString().hashCode;

}

class AppNavigatorStateBubble extends AppNavigatorState {
  @override
  String toString() => 'AppNavigatorStateBubble';

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode => toString().hashCode;
}

class AppNavigatorStateRacing extends AppNavigatorState {
  @override
  String toString() => 'AppNavigatorStateRacing';

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode => toString().hashCode;
}

class AppNavigatorStateRandom extends AppNavigatorState {
  @override
  String toString() => 'AppNavigatorStateRandom';

  @override
  bool operator ==(Object other) => false;

  @override
  int get hashCode => toString().hashCode;
}

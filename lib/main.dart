import 'package:flutter/material.dart';
import 'package:flutter_background/app/app_bloc_observer.dart';
import 'package:flutter_background/use_cases/bloc/navigator/app_navigator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view/app_navigator.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(primaryColor: Colors.blue),
      home: BlocProvider(
        create: (_) => AppNavigatorCubit(),
        child: const AppNavigator(),
      ),
    );
  }
}

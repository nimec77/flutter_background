import 'package:flutter/material.dart';
import 'package:flutter_background/use_cases/bloc/navigator/app_navigator_cubit.dart';
import 'package:flutter_background/view/common_widgets/custom_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: HomePage());

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Background Demo'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                mainButtonText: 'Random Behaviour',
                callbackTertiary: () => context.read<AppNavigatorCubit>().random(),
                color: Colors.green,
              ),
              const SizedBox(height: 20),
              CustomButton(
                mainButtonText: 'Bubble Behaviour',
                callbackTertiary: () {
                  context.read<AppNavigatorCubit>().bubble();
                },
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              CustomButton(
                mainButtonText: 'Racing Behaviour',
                callbackTertiary: () => context.read<AppNavigatorCubit>().racing(),
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

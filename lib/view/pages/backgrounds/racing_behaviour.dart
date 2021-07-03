import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background/use_cases/bloc/navigator/app_navigator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RacingBehaviour extends StatefulWidget {
  const RacingBehaviour({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(
    child: RacingBehaviour(),
  );

  @override
  _RacingBehaviourState createState() => _RacingBehaviourState();
}

class _RacingBehaviourState extends State<RacingBehaviour> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Racing Behaviour Background'),
        centerTitle: true,
        leading: BackButton(
          onPressed: () => context.read<AppNavigatorCubit>().home(),
        ),
      ),
      body: AnimatedBackground(
        behaviour: RacingLinesBehaviour(),
        vsync: this,
        child: const Center(
          child: Text(
            'Racing Behaviour Background',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}

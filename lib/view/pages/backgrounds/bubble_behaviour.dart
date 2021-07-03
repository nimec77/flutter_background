import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background/use_cases/bloc/navigator/app_navigator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BubbleBehaviour extends StatefulWidget {
  const BubbleBehaviour({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(
        child: BubbleBehaviour(),
      );

  @override
  _BubbleBehaviourState createState() => _BubbleBehaviourState();
}

class _BubbleBehaviourState extends State<BubbleBehaviour> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bubble Behaviour Background'),
        centerTitle: true,
        leading: BackButton(
          onPressed: () => context.read<AppNavigatorCubit>().home(),
        ),
      ),
      body: AnimatedBackground(
          behaviour: BubblesBehaviour(),
          vsync: this,
          child: const Center(
            child: Text(
              'Bubble Behaviour Background',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          )),
    );
  }
}

import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background/use_cases/bloc/navigator/app_navigator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomBehaviour extends StatefulWidget {
  const RandomBehaviour({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(
        child: RandomBehaviour(),
      );

  @override
  State<RandomBehaviour> createState() => _RandomBehaviourState();
}

class _RandomBehaviourState extends State<RandomBehaviour> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Behaviour Background'),
        centerTitle: true,
        leading: BackButton(
          onPressed: () => context.read<AppNavigatorCubit>().home(),
        ),
      ),
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(),
        vsync: this,
        child: const Center(
          child: Text(
            'Random Behavior Background',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}

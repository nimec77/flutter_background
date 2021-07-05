import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

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

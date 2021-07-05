import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

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

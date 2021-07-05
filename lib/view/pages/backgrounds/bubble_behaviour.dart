import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

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

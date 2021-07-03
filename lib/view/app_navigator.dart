import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background/use_cases/bloc/navigator/app_navigator_cubit.dart';
import 'package:flutter_background/view/pages/backgrounds/bubble_behaviour.dart';
import 'package:flutter_background/view/pages/backgrounds/racing_bahaviour.dart';
import 'package:flutter_background/view/pages/backgrounds/random_behaviour.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/home_page.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppNavigatorState>(
      state: context.select<AppNavigatorCubit, AppNavigatorState>((cubit) => cubit.state),
      onGeneratePages: (state, pages) => state.map(
        initial: (_) => [HomePage.page()],
        bubble: (_) => [BubbleBehaviour.page()],
        racing: (_) => [RacingBehaviour.page()],
        random: (_) => [RandomBehaviour.page()],
      ),
    );
  }
}

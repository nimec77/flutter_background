import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background/use_cases/bloc/navigator/app_navigator_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/background_pages.dart';
import 'pages/home_page.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppNavigatorState>(
      state: context.select<AppNavigatorCubit, AppNavigatorState>((cubit) => cubit.state),
      onGeneratePages: (state, pages) => [
          HomePage.page(),
          if (state is AppNavigatorStateBubble)
            BubbleBehaviour.page()
          else if (state is AppNavigatorStateRacing)
            RacingBehaviour.page()
          else if (state is AppNavigatorStateRandom)
            RandomBehaviour.page()
        ],
    );
  }
}

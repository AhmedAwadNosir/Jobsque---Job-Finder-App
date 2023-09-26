import 'package:flutter/material.dart';

import 'custom_step_progress_icon_complete.dart';
import 'custom_step_progress_icon_indexed.dart';

class CustomStepProgressIcon extends StatelessWidget {
  const CustomStepProgressIcon({
    super.key,
    required this.isActiveIcon,
    required this.iconIndex,
    this.state = CustomStepState.indexed,
  });

  final bool isActiveIcon;
  final int iconIndex;
  final CustomStepState state;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case CustomStepState.indexed:
        return CustomStepProgressIconIndexed(
          isActiveIcon: isActiveIcon,
          iconIndex: iconIndex,
        );
      case CustomStepState.complete:
        return const CsutomStepProgressIconComplete();
    }
  }
}

enum CustomStepState {
  /// A step that displays its index in its circle.
  indexed,

  /// A step that displays a tick icon in its circle.
  complete,
}

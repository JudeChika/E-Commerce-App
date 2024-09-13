import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,

      /// If [Size.isFinite': is not true] Error -> Read README.md file at [Design ERRORS] #1
        child: Stack(
          children: [
            /// Background Custom Shapes
            Positioned(top: -150, right: -200, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
            Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
    );
  }
}
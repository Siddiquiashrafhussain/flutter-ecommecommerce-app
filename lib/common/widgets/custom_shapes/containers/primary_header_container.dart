import 'package:flutter/material.dart';

import '../../../../util/constants/colors.dart';
import '../curved_edges/curved_edges_Widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
        // height: 400,
       child: Container(
        color: TColors.primary,
        // padding: const EdgeInsets.all(0),

        /// -- if [size.isFinite': is not true.in stack] error occurred -> read README.md file at []
          child: Stack(
            children: [
              /// -- Background Custom Shapes
              Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
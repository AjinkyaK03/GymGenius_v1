import 'package:flutter/material.dart';
import 'package:gymgenius_v1/common/widgets/custon_shapes/containers/circular_container.dart';
import 'package:gymgenius_v1/common/widgets/custon_shapes/curved_edges/curved_edge_widget.dart';
import 'package:gymgenius_v1/utils/constant/colors.dart';

class KPrimaryHeaderContainer extends StatelessWidget {
  const KPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return KCurvedEdgeWidget(
      child: Container(
        color: KColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: KCircularContainer(
                  backgroundColor: KColors.white.withAlpha(25),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: KCircularContainer(
                  backgroundColor: KColors.white.withAlpha(25),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

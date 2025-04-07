
import 'package:flutter/material.dart';
import 'package:gymgenius_v1/common/widgets/custon_shapes/curved_edges/curved_edge.dart';

class KCurvedEdgeWidget extends StatelessWidget {
  const KCurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: KCustomCurvedEdges(), child: child);
  }
}
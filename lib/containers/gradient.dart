import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final Map<String, Alignment> alignments;
  final Widget child;

  const GradientContainer({super.key, required this.child, required this.colors, required this.alignments});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: alignments["begin"]!, end: alignments["end"]!, colors: colors)),
        child: child);
  }
}

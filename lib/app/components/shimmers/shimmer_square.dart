import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';

class ShimmerSquare extends StatelessWidget {
  final double size;
  const ShimmerSquare({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return FadeShimmer(
      width: size,
      height: size,
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      radius: 10,
    );
  }
}

class ShimmerRect extends StatelessWidget {
  final Size size;
  const ShimmerRect({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return FadeShimmer(
      width: size.width,
      height: size.height,
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      radius: 10,
    );
  }
}

class ShimmerCircle extends StatelessWidget {
  final double size;
  const ShimmerCircle({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return FadeShimmer(
      width: size,
      height: size,
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade100,
      radius: size / 2,
    );
  }
}

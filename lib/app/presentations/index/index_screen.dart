import 'package:buddyjet/app/config/themes/spacing.dart';
import 'package:buddyjet/gen/assets.gen.dart';
import 'package:buddyjet/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.emerald.shade50,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Spacing.height20,
          Assets.images.buddyJetV.svg(
            height: 30,
          ),
          Spacing.height20,
        ],
      ),
    );
  }
}

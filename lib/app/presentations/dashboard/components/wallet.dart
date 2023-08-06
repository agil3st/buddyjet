import 'package:buddyjet/app/config/design_system/ui_radius.dart';
import 'package:buddyjet/app/config/design_system/ui_spacing.dart';
import 'package:buddyjet/gen/assets.gen.dart';
import 'package:buddyjet/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class Wallet extends StatelessWidget {
  final String value;
  const Wallet({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 3,
      child: Container(
        padding: UISpacing.paddingAll16,
        decoration: BoxDecoration(
          color: ColorName.emerald,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ColorName.emerald.shade400,
              ColorName.emerald,
            ],
          ),
          borderRadius: BorderRadius.only(
            topLeft: UIRadius.radius6,
            topRight: UIRadius.radius6,
            bottomLeft: UIRadius.radius20,
            bottomRight: UIRadius.radius20,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: ColorName.emerald.shade50,
                    shape: BoxShape.circle,
                  ),
                  padding: UISpacing.paddingAll6,
                  child: Assets.images.buddyJet.svg(height: 30, width: 30),
                ),
                UISpacing.width14,
                Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: ColorName.emerald.shade50,
                  ),
                ),
                UISpacing.width8,
                Icon(
                  TablerIcons.eye,
                  color: ColorName.emerald.shade50,
                )
              ],
            ),
            UISpacing.height4,
            Text(
              'Wallet Name',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: ColorName.emerald.shade50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

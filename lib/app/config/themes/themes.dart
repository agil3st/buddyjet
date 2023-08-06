import 'package:buddyjet/gen/colors.gen.dart';
import 'package:buddyjet/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class Themes {
  final String fontPrimary = FontFamily.outfit;

  ThemeData get light => ThemeData(
        fontFamily: fontPrimary,
        useMaterial3: true,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: ColorName.emerald,
            ),
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: ColorName.emerald,
          hoverColor: ColorName.emerald,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 12,
            height: 1.5,
          ),
        ),
      );
}

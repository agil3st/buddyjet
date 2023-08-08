import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultScaffold extends StatelessWidget {
  final String? title;
  final Widget body;
  final bool useHiddenBackNavigation;
  const DefaultScaffold({
    super.key,
    this.title,
    required this.body,
    this.useHiddenBackNavigation = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: title == null
          ? null
          : AppBar(
              title: Text(title!),
              centerTitle: true,
            ),
      body: SafeArea(
        child: !useHiddenBackNavigation
            ? body
            : Stack(
                children: [
                  body,
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        if (details.delta.dx > 0) {
                          Get.back();
                        }
                      },
                      child: Container(
                        height: 80,
                        width: 200,
                        color: Colors.yellow.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

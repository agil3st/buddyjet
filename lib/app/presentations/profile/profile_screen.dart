import 'package:buddyjet/app/components/scaffolds/default_scaffold.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      useHiddenBackNavigation: false,
      title: 'Profile',
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}

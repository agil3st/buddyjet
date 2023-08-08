import 'package:buddyjet/app/components/scaffolds/default_scaffold.dart';
import 'package:flutter/material.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      useHiddenBackNavigation: false,
      title: 'Budgets',
      body: Center(
        child: Text('Budgets'),
      ),
    );
  }
}

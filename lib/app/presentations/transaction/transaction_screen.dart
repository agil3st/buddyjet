import 'package:buddyjet/app/components/scaffolds/default_scaffold.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      useHiddenBackNavigation: false,
      title: 'Transaction',
      body: Center(
        child: Text('Transaction'),
      ),
    );
  }
}

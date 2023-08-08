import 'package:buddyjet/app/components/scaffolds/default_scaffold.dart';
import 'package:flutter/material.dart';

class AddTransactionFormScreen extends StatelessWidget {
  const AddTransactionFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      body: Center(
        child: Text('Transaction Form'),
      ),
    );
  }
}

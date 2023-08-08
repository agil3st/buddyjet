import 'package:buddyjet/app/config/constants/routes.dart';
import 'package:buddyjet/app/presentations/index/index_screen.dart';
import 'package:buddyjet/app/presentations/transaction_form/add_transaction_form.dart';
import 'package:get/get.dart';

class AppRouter {
  static final router = [
    GetPage(name: Routes.index, page: () => const IndexScreen()),
    GetPage(
        name: Routes.addTransaction,
        page: () => const AddTransactionFormScreen()),
  ];
}

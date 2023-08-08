import 'package:buddyjet/app/config/constants/routes.dart';
import 'package:buddyjet/app/controllers/index_controller.dart';
import 'package:buddyjet/app/presentations/budget/budget_screen.dart';
import 'package:buddyjet/app/presentations/dashboard/dashboard_screen.dart';
import 'package:buddyjet/app/presentations/profile/profile_screen.dart';
import 'package:buddyjet/app/presentations/transaction/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:get/get.dart';

class IndexScreen extends GetView<IndexController> {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController.value,
        onPageChanged: controller.onChangePage,
        children: const [
          DashboardScreen(),
          BudgetScreen(),
          TransactionScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: GestureDetector(
            onPanUpdate: (details) {
              // Swiping in right direction.
              if (details.delta.dx > 0) {
                Get.toNamed(Routes.addTransaction);
              }
            },
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: controller.pageIndex.value,
              selectedFontSize: 12,
              onTap: controller.onTapNavBar,
              backgroundColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    TablerIcons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    TablerIcons.wallet,
                  ),
                  label: 'Budgets',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    TablerIcons.currency_dollar,
                  ),
                  label: 'Transactions',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    TablerIcons.user,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

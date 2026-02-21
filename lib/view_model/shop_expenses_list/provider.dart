import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'state.dart';

part 'provider.g.dart';

@riverpod
class ShopExpensesListViewModel extends _$ShopExpensesListViewModel {
  @override
  ShopExpensesListViewModelState build() {
    return const ShopExpensesListViewModelState(
      currentMonth: 'February 2026',
      totalMonthlyExpense: '\$2,450.80',
      expenses: [
        ShopExpense(
          title: 'Utilities: Electricity',
          date: 'Feb 18, 2026',
          amount: '\$120.00',
          icon: Icons.lightbulb_outline,
          color: Colors.orange,
        ),
        ShopExpense(
          title: 'Inventory: Packaging',
          date: 'Feb 18, 2026',
          amount: '\$45.50',
          icon: Icons.inventory_2_outlined,
          color: Colors.blue,
        ),
        ShopExpense(
          title: 'Utilities: Electricity',
          date: 'Feb 17, 2026',
          amount: '\$120.00',
          icon: Icons.lightbulb_outline,
          color: Colors.orange,
        ),
        ShopExpense(
          title: 'Inventory: Packaging',
          date: 'Feb 17, 2026',
          amount: '\$45.50',
          icon: Icons.inventory_2_outlined,
          color: Colors.blue,
        ),
        ShopExpense(
          title: 'Utilities: Electricity',
          date: 'Feb 16, 2026',
          amount: '\$120.00',
          icon: Icons.lightbulb_outline,
          color: Colors.orange,
        ),
        ShopExpense(
          title: 'Inventory: Packaging',
          date: 'Feb 16, 2026',
          amount: '\$45.50',
          icon: Icons.inventory_2_outlined,
          color: Colors.blue,
        ),
      ],
    );
  }

  void nextMonth() {
    // Logic for next month
  }

  void previousMonth() {
    // Logic for previous month
  }
}

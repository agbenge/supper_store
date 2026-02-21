import 'package:flutter/material.dart';

class ShopExpense {
  final String title;
  final String date;
  final String amount;
  final IconData icon;
  final Color color;

  const ShopExpense({
    required this.title,
    required this.date,
    required this.amount,
    required this.icon,
    required this.color,
  });
}

class ShopExpensesListViewModelState {
  final String currentMonth;
  final String totalMonthlyExpense;
  final List<ShopExpense> expenses;

  const ShopExpensesListViewModelState({
    this.currentMonth = '',
    this.totalMonthlyExpense = '',
    this.expenses = const [],
  });

  ShopExpensesListViewModelState copyWith({
    String? currentMonth,
    String? totalMonthlyExpense,
    List<ShopExpense>? expenses,
  }) {
    return ShopExpensesListViewModelState(
      currentMonth: currentMonth ?? this.currentMonth,
      totalMonthlyExpense: totalMonthlyExpense ?? this.totalMonthlyExpense,
      expenses: expenses ?? this.expenses,
    );
  }
}

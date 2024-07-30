import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<Expense> _expensesData = [
    Expense(
      title: 'Flutter course',
      amount: 20.00,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Dinner at a restaurant',
      amount: 50.00,
      date: DateTime.utc(2025),
      category: Category.food,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white30,
        child: SafeArea(
          child: Column(
            children: [
              const Text('The chart'),
              Expanded(
                child: ExpensesList(data: _expensesData),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

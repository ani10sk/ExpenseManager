import 'package:flutter/material.dart';
import './finance.dart';

class Finances extends ChangeNotifier {
  List<IncomeType> incomeTypes = [];
  List<ExpenseType> expenseTypes = [];

  void addIncomeType(incometype) {
    incomeTypes.add(IncomeType(incometype));
    notifyListeners();
  }

  void addExpenseType(expensetype) {
    expenseTypes.add(ExpenseType(expensetype));
    notifyListeners();
  }
}

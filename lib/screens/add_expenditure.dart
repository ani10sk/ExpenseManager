import 'package:flutter/material.dart';

class AddExpenditure extends StatelessWidget {
  static const rout = 'add-expense-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Add Expense Type'),
      ),
    );
  }
}

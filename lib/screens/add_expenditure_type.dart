import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/finances.dart';

class AddExpenditure extends StatelessWidget {
  static const rout = 'add-expense-screen';
  final TextEditingController expenseType = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Add Expense Type'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.red[100]),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: expenseType,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  hintText: 'Enter your expenditure cause here'),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: () {
          Provider.of<Finances>(context, listen: false)
              .addExpenseType(expenseType.text);
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/finances.dart';

class AddIncome extends StatelessWidget {
  static const rout = 'add-income-screen';
  final TextEditingController incomeType = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Add Income Type'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.green[100]),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: incomeType,
              textInputAction: TextInputAction.done,
              decoration:
                  InputDecoration(hintText: 'Enter your income source here'),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        onPressed: () {
          Provider.of<Finances>(context, listen: false)
              .addIncomeType(incomeType.text);
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

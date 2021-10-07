import 'package:flutter/material.dart';

class AddIncome extends StatelessWidget {
  static const rout = 'add-income-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Add Income Type'),
      ),
    );
  }
}

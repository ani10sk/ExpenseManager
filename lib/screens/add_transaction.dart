import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  static const rout = 'add-transaction';
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Transactions'),
      ),
      body: Form(
        key: form,
        child: ListView(
          children: [TextFormField()],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './screens/transactions_page.dart';
import './screens/add_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TransactionsPage(),
      routes: {AddTransaction.rout: (ctx) => AddTransaction()},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/transactions_page.dart';
import './screens/add_transaction.dart';
import 'screens/add_expenditure_type.dart';
import './screens/add_income_type.dart';
import './providers/finances.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Finances())],
      child: MyApp()));
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
      routes: {
        AddTransaction.rout: (ctx) => AddTransaction(),
        AddExpenditure.rout: (ctx) => AddExpenditure(),
        AddIncome.rout: (ctx) => AddIncome()
      },
    );
  }
}

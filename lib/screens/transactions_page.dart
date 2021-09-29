import 'package:flutter/material.dart';
import '../screens/add_transaction.dart';
import './app_drawer.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transactions Page'),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.calendar_today_rounded)),
            IconButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(AddTransaction.rout),
                icon: Icon(Icons.add))
          ],
        ),
        drawer: AppDrawer(),
        body: Center(
          child: Text('To be replaced with list view soon'),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/add_transaction.dart';
import '../providers/transactions.dart';
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
          child: Consumer<Transactions>(
            builder: (_, tr, __) => tr.transactions.length == 0
                ? Center(child: Text('No transactions recorded'))
                : ListView.builder(
                    itemBuilder: (ctx, i) => ListTile(
                      leading: Text(tr.transactions[i].purpose),
                    ),
                    itemCount: tr.transactions.length,
                  ),
          ),
        ));
  }
}

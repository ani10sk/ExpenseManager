import 'package:flutter/material.dart';
import './transaction.dart';

class Transactions extends ChangeNotifier {
  List<Transaction> transactions = [];

  void addTransaction(Transaction tr) {
    transactions.add(tr);
    notifyListeners();
  }
}

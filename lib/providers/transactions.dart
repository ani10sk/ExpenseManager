import 'package:flutter/material.dart';
import './transaction.dart';

class Transactions extends ChangeNotifier {
  List<Transaction> transactions = [];

  List<String> incomeSource = [];

  List<String> transactionType = ['Income', 'Debit', 'Loaned In', 'Loaned Out'];

  List<String> expenditureType = ['Food', 'Rent', 'Water', 'Fuel'];

  void addTransaction(Transaction tr) {
    transactions.add(tr);
  }
}

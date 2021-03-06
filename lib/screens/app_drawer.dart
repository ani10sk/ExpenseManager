import 'package:flutter/material.dart';
import 'add_expenditure_type.dart';
import 'add_income_type.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 3,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
            child: Text(
              'Options',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            onTap: () {},
            title: Text('Personal Finances'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed(AddIncome.rout),
            title: Text('Add/View Income Type'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () => Navigator.of(context).pushNamed(AddExpenditure.rout),
            title: Text('Add/View Expenditure Type'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {},
            title: Text('Add/View Investments'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () => {},
            title: Text('Add/View Bank Accounts'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {},
            title: Text('Settings'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          )
        ],
      ),
    );
  }
}

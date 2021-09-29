import 'package:flutter/material.dart';

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
            title: Text('Add Income Source'),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            onTap: () {},
            title: Text('Add Expenditure Type'),
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

import 'package:flutter/material.dart';

class DropDownType extends StatelessWidget {
  final Function getType;
  DropDownType(this.getType);
  Widget build(BuildContext context) {
    var types = ['Expense', 'Income'];
    var ht = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: SizedBox(
        height: ht * 0.3,
        child: ListView.builder(
          itemBuilder: (ctx, i) => ListTile(
            onTap: () => getType(types[i]),
            leading: Text(types[i]),
          ),
          itemCount: types.length,
        ),
      ),
    );
  }
}

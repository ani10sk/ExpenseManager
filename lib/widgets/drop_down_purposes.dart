import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/finances.dart';

class DropDownPurpose extends StatefulWidget {
  final String expenditureType;
  final Function setExpendituretype;
  DropDownPurpose(this.expenditureType, this.setExpendituretype);

  @override
  _DropDownPurposeState createState() => _DropDownPurposeState();
}

class _DropDownPurposeState extends State<DropDownPurpose> {
  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: SizedBox(
          height: ht * 0.3,
          child: widget.expenditureType == 'Income'
              ? Consumer<Finances>(
                  builder: (_, f, __) => f.incomeTypes.length == 0
                      ? Center(
                          child: Text('No income types given'),
                        )
                      : ListView.builder(
                          itemBuilder: (ctx, i) => ListTile(
                            leading: Text(
                              f.incomeTypes[i].nameoffinance,
                              style: TextStyle(color: Colors.green),
                            ),
                            onTap: () => widget.setExpendituretype(
                                f.incomeTypes[i].nameoffinance),
                          ),
                          itemCount: f.incomeTypes.length,
                        ))
              : widget.expenditureType == 'Expense'
                  ? Consumer<Finances>(
                      builder: (_, f, __) => f.expenseTypes.length == 0
                          ? Center(
                              child: Text('No expense types given'),
                            )
                          : ListView.builder(
                              itemBuilder: (ctx, i) => ListTile(
                                leading: Text(
                                  f.expenseTypes[i].nameoffinance,
                                  style: TextStyle(color: Colors.red),
                                ),
                                onTap: () => widget.setExpendituretype(
                                    f.incomeTypes[i].nameoffinance),
                              ),
                              itemCount: f.expenseTypes.length,
                            ))
                  : Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(
                          'Please choose a category for transaction (Either Income or Expense)',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    )),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/drop_down_types.dart';

class AddTransaction extends StatefulWidget {
  static const rout = 'add-transaction';
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  var choosetransaction = false;
  var choosepurpose = false;
  final form = GlobalKey<FormState>();

  var mapData = {
    'amount': '',
    'date': '',
    'category': '',
    'purpose': '',
    'comment': ''
  };

  void gettransactiontype(String type) {
    setState(() {
      mapData['category'] = type;
      choosetransaction = false;
    });
  }

  void savedata() {
    if (form.currentState!.validate()) {
      form.currentState!.save();
      print(mapData);
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Submitted the data')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Transactions'),
      ),
      body: Form(
        key: form,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(labelText: 'Give the amount'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == '') {
                    return 'Give a valid amount';
                  }
                  return null;
                },
                onSaved: (value) {
                  mapData['amount'] = value.toString();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ListTile(
                leading: mapData['category'] == ''
                    ? Text('Choose Transaction')
                    : Text(mapData['category'].toString()),
                trailing: choosetransaction
                    ? Icon(Icons.arrow_upward_sharp)
                    : Icon(Icons.arrow_downward_sharp),
                onTap: () {
                  setState(() {
                    choosetransaction = !choosetransaction;
                  });
                },
              ),
            ),
            choosetransaction
                ? DropDownType(gettransactiontype)
                : SizedBox(
                    height: 1,
                  ),
            Padding(
              padding: EdgeInsets.all(10),
              child: OutlinedButton(
                  onPressed: () => savedata(), child: Text('Submit data')),
            )
          ],
        ),
      ),
    );
  }
}

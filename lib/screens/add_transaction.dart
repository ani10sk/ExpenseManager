import 'package:flutter/material.dart';
import '../widgets/drop_down_types.dart';
import 'package:intl/intl.dart';

class AddTransaction extends StatefulWidget {
  static const rout = 'add-transaction';
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  DateTime presentdate = DateTime.now();
  var choosetransaction = false;
  var choosepurpose = false;
  final form = GlobalKey<FormState>();

  var mapData = {
    'amount': '',
    'date': (DateTime.now()).toIso8601String(),
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

  void chooseDatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime(2100))
        .then((value) {
      if (value == null) {
        return;
      } else {
        setState(() {
          presentdate = value;
          mapData['date'] = presentdate.toIso8601String();
        });
      }
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
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: ListTile(
                  leading: IconButton(
                      onPressed: chooseDatepicker,
                      icon: Icon(Icons.calendar_today)),
                  trailing: Text(DateFormat.yMMMd().format(presentdate)),
                )),
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
              child: ListTile(
                leading: Text('Choose Purpose'),
                trailing: Icon(Icons.arrow_downward_sharp),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                decoration: BoxDecoration(border: Border.all()),
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  maxLines: 6,
                  decoration: InputDecoration(
                    labelText: 'Enter comments you wish to enter',
                  ),
                  onSaved: (value) {
                    mapData['comment'] = value.toString();
                  },
                ),
              ),
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

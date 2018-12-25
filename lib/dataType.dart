import 'package:flutter/material.dart';

class DataInput extends StatefulWidget {
  const DataInput({ Key key }) : super(key: key);

  @override
  _DataInputState createState() => _DataInputState();
}

class _DataInputState extends State<DataInput> {

  String _selected;

  Widget _fields = new TextField(
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: "Based off Selection",
      hintText: "No Selection Made",
    ),
    keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
    textInputAction: TextInputAction.done,
    style: TextStyle(fontSize: 22.0),
  );

  Widget build(BuildContext context) {
    if (_selected == 'Time') {
      _fields = Row(
        children: <Widget>[
          Expanded(
            child: new TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Minutes",
                hintText: "####",
              ),
              keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
              textInputAction: TextInputAction.done,
              style: TextStyle(fontSize: 22.0, color: Colors.black),
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(":", style: TextStyle(fontSize: 32.0),),
          ),
          Expanded(
            child: new TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Seconds",
                hintText: "####",
              ),
              keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
              textInputAction: TextInputAction.done,
              style: TextStyle(fontSize: 22.0, color: Colors.black),
            ),
          ),
        ],
      );
    } else if (_selected == 'Weight') {
      _fields = new TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Weight",
          hintText: "####",
        ),
        keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
        textInputAction: TextInputAction.done,
        style: TextStyle(fontSize: 22.0, color: Colors.black),
      );
    } else if (_selected == 'Rounds') {
      _fields = new TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Rounds",
          hintText: "####",
        ),
        keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
        textInputAction: TextInputAction.done,
        style: TextStyle(fontSize: 22.0, color: Colors.black),
      );
    }
    else if (_selected == 'Reps') {
      _fields = new TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Reps",
          hintText: "####",
        ),
        keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
        textInputAction: TextInputAction.done,
        style: TextStyle(fontSize: 22.0, color: Colors.black),
      );
    } else {
      _fields = new TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Based off Selection",
          hintText: "No Selection Made",
        ),
        keyboardType: TextInputType.numberWithOptions(signed: false, decimal: false),
        textInputAction: TextInputAction.done,
        style: TextStyle(fontSize: 22.0, color: Colors.black),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        DropdownButton<String>(
          value: _selected,
          hint: Text('Choose Record Type'),
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
          items: <String>['Time', 'Rounds', 'Reps', 'Weight'].map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (String val) {
            _selected = val;
            this.setState(() => { });
          },
        ),
        _fields,
      ],
    );
  }
}
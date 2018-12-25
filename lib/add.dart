import 'package:flutter/material.dart';
import './dataType.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({ Key key }) : super(key: key);

  @override
  _AddScreenState createState() => _AddScreenState();
}

int _numInputs = 1;

class _AddScreenState extends State<AddScreen> {

  Widget build(BuildContext context) {

    var inputs = <Widget>[new DataInput(),];
    if (_numInputs < 1) {
      _numInputs = 1;
    }

    for (var i = 1; i < _numInputs; i++) {
      inputs.add(new DataInput());
    }

    inputs.add(Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: IconButton(
                iconSize: 48.0,
                icon: Icon(Icons.add_circle),
                tooltip: 'Add New Data',
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  _numInputs++;
                  this.setState(() => { });},
            )
          ),
          Expanded(
              child: IconButton(
                iconSize: 48.0,
                icon: Icon(Icons.remove_circle),
                tooltip: 'Remove Data',
                color: Colors.red,
                onPressed: () {
                  _numInputs--;
                  this.setState(() => { });},
              )
          ),
          Expanded(
              child: IconButton(
                iconSize: 48.0,
                icon: Icon(Icons.save),
                tooltip: 'Save Workout',
                color: Colors.green,
                onPressed: () {
                    for (var input in inputs) {
                      if (input is DataInput) {
                        print(input);
                      }
                    }
                  },
              )
          ),
        ],
      ),
    ),);

    return Scaffold(
        appBar: AppBar(
        title: Text("Add Workout Data"),
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width*0.8, 108.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: TextField(
              style: DefaultTextStyle.of(context).style.apply(color: Colors.white),
              decoration: InputDecoration(
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,)),
                labelText: 'Workout Title',
                labelStyle: TextStyle(color: Colors.white70),
              ),
            ),
          ),
        ),
        ),
      body: new GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Form (
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(itemBuilder: (BuildContext context, int index){
              var item = inputs[index];
              return new Card(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: item,
                ),
              );
            },
            itemCount: inputs.length,
            ),
          )
        ),
      )
    );
  }
}

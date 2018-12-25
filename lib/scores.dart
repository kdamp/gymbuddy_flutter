import 'package:flutter/material.dart';

class ScoresScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.timer),
          title: Text('One Mile Run'),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        ),
        ListTile(
          leading: Icon(Icons.create),
          title: Text('Named Workout'),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        ),
        ListTile(
          leading: Icon(Icons.directions_run),
          title: Text('Running Time'),
          onTap: () { print("Hello World!"); },
          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        ),
      ],
    );
  }
}
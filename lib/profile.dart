import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class ProfileScreen extends StatelessWidget {

  var profile = <Widget>[
    Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Icon(Icons.person, size: 48.0, color: Colors.orange,),
            ),
            Text("Kyle Dampier", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 32.0),),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text("Sed tincidunt magna et ex euismod faucibus. Etiam varius blandit arcu vel luctus. In faucibus porta eros non sagittis. Etiam eget magna sit amet tortor congue semper vel eget neque. Sed mi neque, accumsan in ultricies ut, varius vitae magna. Quisque at dolor diam. Pellentesque ut lacinia justo.", textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    ),
    Column(
      children: <Widget>[
        OutlineButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.account_circle),
                ),
                Expanded(child: Center(child: Text("Login to Gym Buddy", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),))),
              ],
            ),
          ),
          onPressed: () => { },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: OutlineButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(MdiIcons.facebook),
                  ),
                  Expanded(child: Center(child: Text("Login to Facebook", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),))),
                ],
              ),
            ),
            onPressed: () => { },
          ),
        ),
        OutlineButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(MdiIcons.google),
                ),
                Expanded(child: Center(child: Text("Login to Google", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),))),
              ],
            ),
          ),
          onPressed: () => { },
        ),
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ListView.builder(
        itemCount: profile.length,
        itemBuilder: (BuildContext context, int index){
          var item = profile[index];
          return new Card(
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: item,
            ),
          );
        },
      ),
    );
  }
}
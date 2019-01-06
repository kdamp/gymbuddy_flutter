import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var feed = <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Icon(Icons.person),
                ),
                Expanded(child: Text("Sample User", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),)
              ],
            ),
            DecoratedBox (
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                image: DecorationImage(image: AssetImage("sampledata/exampleImg.jpg"))
              ),
            )
          ],
        )
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(itemBuilder: (BuildContext context, int index){
        var item = feed[index];
        return new Card(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: item,
          ),
        );
      },
        itemCount: feed.length,
      ),
    );
  }
}
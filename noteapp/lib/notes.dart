import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Notes'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Added this line
          children: <Widget>[
            SizedBox(height: 25),
            Text(
              '17:50',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 25),

            Text(
              'Title',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold), // Added a font size and font weight
            ),
            SizedBox(height: 25),

            Text('Note something down'),
          ],
        ),
      ),
    );
  }
}
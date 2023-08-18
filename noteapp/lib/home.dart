import 'package:flutter/material.dart';
import 'package:noteapp/reUsableCard.dart';
import 'package:noteapp/reUsableCard1.dart';

import 'constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 40.0, top: 80.0, right: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                'Notes',
              style: kNotes,
            ),

            SizedBox(height: 30.0),
            Container(
              height: 49.0,
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(width: 20.0),
                    Text(
                      'Search Notes',
                      style: kSearch,
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20.0),
            ReUsableCard(label: 'Heap Sort', date: '16:47, June 2, 2023', score: '2/2', icon: Icons.circle_outlined),
            SizedBox(height: 20.0),


            ReUsableCard(label: 'Python', date: '06:15, January 17, 2023', score: '1/2', icon: Icons.circle_outlined),
            SizedBox(height: 20.0),

            //
            ReUsableCard1(label: 'pdf drive', text: 'https://drive.google.com/drive/folder/', date: '19:34,  November 12,  2022'),
            SizedBox(height: 20.0),


            Container(
              height: 49.0,
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(width: 20.0),
                    Text(
                      'Search Notes',
                      style: kSearch,
                    )
                  ],
                ),
              ),
            ),

            Container(
              height: 49.0,
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(width: 20.0),
                    Text(
                      'Search Notes',
                      style: kSearch,
                    )
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'constants.dart';

class ReUsableCard extends StatelessWidget {
  ReUsableCard({required this.label, required this.date, required this.score, required this.icon});
  late String label;
  late String date;
  late String score;
  late IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: GestureDetector(
        onTap: () {},
        child: Card(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    label,
                  ),
                ),

                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Text(
                      date,
                      style: kSearch,
                    ),
                    SizedBox(width: 15.0),
                    Icon(icon),
                    Text(
                      score,
                      style: kSearch,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

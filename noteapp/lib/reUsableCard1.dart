import 'package:flutter/material.dart';

import 'constants.dart';

class ReUsableCard1 extends StatelessWidget {
  ReUsableCard1({required this.label, required this.text, required this.date});
  late String label;
  late String text;
  late String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                  label,
              ),
              SizedBox(height: 5.0),
              Text(text),
              Text(
                  date,
                style: kSecondLastCard,

              )

            ],
          ),
        ),
      ),
    );
  }
}

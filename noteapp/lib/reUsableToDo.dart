import 'package:flutter/material.dart';

import 'constants.dart';

class ReUsableCardTodo extends StatelessWidget {
  ReUsableCardTodo({required this.icon, required this.label});
  late String label;
  late IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.0,
      child: GestureDetector(
        onTap: () {},
        child: Card(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon),
                  SizedBox(width: 15.0),
                  Text(label),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
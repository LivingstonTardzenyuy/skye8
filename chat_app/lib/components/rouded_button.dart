import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {

  RoundButton({required this.label, required this.route, required this.colour});
  late String label;
  late String route;
  late Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {

            Navigator.pushNamed(context, route);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
              label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

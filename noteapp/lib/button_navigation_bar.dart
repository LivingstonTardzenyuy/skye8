import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatelessWidget {

  final List<BottomNavigationBarItem> items;

  const ButtonNavigationBar({required this.items});


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black12,
      type: BottomNavigationBarType.fixed,
      items: items,
    );
  }
}
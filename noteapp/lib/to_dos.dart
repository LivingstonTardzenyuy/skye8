import 'package:flutter/material.dart';
import 'package:noteapp/reUsableCard.dart';
import 'package:noteapp/reUsableToDo.dart';

import 'button_navigation_bar.dart';
import 'constants.dart';

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        leading: Icon(Icons.more_vert),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text('To-dos',
                  style: TextStyle(
                    fontSize: 25,

                  ),
                ),

                SizedBox(height: 20),
                Container(
                  height: 50,
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.search),
                        Text('Search a To-do'),
                      ],
                    ),
                  ),
                ),

                // SizedBox(height: 20.0),
                ReUsableCardTodo(icon: Icons.circle_outlined, label: 'Welcome to To-do',),

                ReUsableCardTodo(icon: Icons.circle_outlined, label: 'Create your to-dos by typing',),


                ReUsableCardTodo(icon: Icons.circle_outlined, label: 'Tap on to-do content to edit it',),



              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ButtonNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.note_add),
                  label: 'Notes',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.circle_outlined),
                  label: 'To-dos',
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
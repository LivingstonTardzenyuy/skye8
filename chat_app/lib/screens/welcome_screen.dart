import 'package:chat_app/config/app_strings.dart';
import 'package:flutter/material.dart';

import '../components/rouded_button.dart';
import '../config/images.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      upperBound: 100,
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset(UserImages.logo),
                    height: 60.0,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  UserVariables.flashChat,
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black26,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),

            RoundButton(label: UserVariables.login, route:'login_screen/', colour: Colors.lightBlueAccent,),

            RoundButton(label: UserVariables.register, route:'registration_screen/', colour: Colors.blueAccent),

          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutterfbauth/services/authservice.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(''),
      TextButton(
          onPressed: () {
            AuthService().signOut();
          },
          child: Center(
              child: Text(
            'Welcome To UP Outlook',
            style: TextStyle(
              fontSize: 30,
            ),
          )))
    ]));
  }
}

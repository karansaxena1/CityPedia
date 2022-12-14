// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterfbauth/home_screen.dart';
// import 'package:flutterfbauth/login_page.dart';
// import 'package:flutterfbauth/services/authservice.dart';
// import 'package:flutterfbauth/splash_page.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false,
//     routes: {
//       "/": (context) => SplashPage(),
//       "/intro": (context) => LoginPage(),
//       "/home": ((context) => HomeScreen())
//     });
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfbauth/home_page.dart';
import 'package:flutterfbauth/login_page.dart';
import 'package:flutterfbauth/services/authservice.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuth(),
    );
  }
}

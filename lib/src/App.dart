import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ooredooconx/src/Screens/Login.dart';

class App  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        accentColor: Colors.orange,
        primarySwatch: Colors.blue
      ),
      home: LoginScreen(),

    );
  }
}

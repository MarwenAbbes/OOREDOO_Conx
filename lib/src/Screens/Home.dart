import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ooredooconx/src/Screens/Login.dart';

class HomeScreen  extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(
          // ignore: deprecated_member_use
          child: FlatButton(child: Text('Logout'), onPressed: (){
            auth.signOut();
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
          })
      )
    );
  }
}

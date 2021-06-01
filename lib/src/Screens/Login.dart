


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ooredooconx/src/Screens/Home.dart';

class LoginScreen  extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration( hintText: 'Email'),
             onChanged: (value) { setState(() {
               _password = value.trim();
             });},
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             obscureText: true,
             decoration: InputDecoration( hintText: 'Password' ),
             onChanged: (value) { setState(() {
               _email = value.trim();
             }); },
           ),
         ),
         Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
           // ignore: deprecated_member_use
           RaisedButton(
               color: Theme.of(context).accentColor ,
               child: Text('Login'),
               onPressed: (){
                 auth.signInWithEmailAndPassword(email: _email, password: _password);
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
               }),
         ],)
        ],) ,
    );
  }
}

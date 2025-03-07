
import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/layouts/auth_layout.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
      }, child: Text("Login")),
    );
  }
}
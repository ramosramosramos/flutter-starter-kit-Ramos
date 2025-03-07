import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/layouts/auth_layout.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

final _formKey = GlobalKey<FormState>();
final TextEditingController _email = TextEditingController(text: "");
final TextEditingController _password = TextEditingController(text: "");


  void _login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Login your account"),
            ),
            Form(
              key: _formKey,
                child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                spacing: 10,
                children: [
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                  TextFormField(
                    controller: _password,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: _login,
    
                          child: Text("Log in")),
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

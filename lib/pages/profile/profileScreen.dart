import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  spacing: 5,
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).hoverColor,
                      child: Icon(Icons.account_circle),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                FormDetails(),
                SizedBox(
                  height: 20,
                ),
                PasswordDetails(),
              ],
            )
          ],
        ));
  }
}

class FormDetails extends StatefulWidget {
  const FormDetails({super.key});

  @override
  State<FormDetails> createState() => _FormDetailsState();
}

class _FormDetailsState extends State<FormDetails> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name =
      TextEditingController(text: "Jhone Doe L. Example");
  final TextEditingController _email =
      TextEditingController(text: 'doe@emaple.mail.com');

  void _save() {
    if (_formKey.currentState!.validate()) {
      // Handle login logic
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Saving details')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 10,
            children: [
              Row(
                children: [
                  Text(
                    "Use this to update your profile details",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
              TextFormField(
                controller: _name,
                decoration: InputDecoration(labelText: 'Name'),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'The name field is required.';
                  }
                },
              ),
              TextFormField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'The email field is required.';
                    } else if (!RegExp(
                            r"^[a-zA-Z0-9.+_-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]+$")
                        .hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  }),
              Row(
                children: [
                  ElevatedButton(onPressed: _save, child: Text("Save"))
                ],
              )
            ],
          ),
        ));
  }
}

class PasswordDetails extends StatefulWidget {
  const PasswordDetails({super.key});

  @override
  State<PasswordDetails> createState() => _PasswordDetailsState();
}

class _PasswordDetailsState extends State<PasswordDetails> {
  final _formeKey = GlobalKey<FormState>();
  final TextEditingController currentPassword = TextEditingController(text: "");
  final TextEditingController newPassword = TextEditingController(text: "");
  final TextEditingController confirmPassword = TextEditingController(text: "");

  void _save() {
    if(_formeKey.currentState!.validate()){

    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Saving password")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formeKey,
        child: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        spacing: 10,
        children: [
         Row(children: [ Text("Use this to update your password.",style: TextStyle(fontSize: 12,color: Colors.grey),),],),
          TextFormField(
            controller: currentPassword,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Current password'),
            validator: (value){
              if(value==null || value.isEmpty) return "Password is required";
                          },
          ),
          TextFormField(
            controller: newPassword,
            obscureText: true,
            decoration: InputDecoration(labelText: 'New password'),
          ),
          TextFormField(
            controller: confirmPassword,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Confirm password'),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: _save, child: Text("Save")),
            ],
          )
        ],
      ),
    ));
  }
}

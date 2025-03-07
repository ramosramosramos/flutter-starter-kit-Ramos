import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/layouts/auth_layout.dart';
import 'package:flutter_starter_kit/pages/auth/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}


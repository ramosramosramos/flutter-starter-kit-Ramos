import 'package:flutter/material.dart';
import 'package:flutter_starter_kit/layouts/auth_layout.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    home: AuthLayout(),
  ));
}

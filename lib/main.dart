import 'package:digital_discom/app/ui/login_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Discom',
      debugShowCheckedModeBanner: false,
      home: LoginUi(),
    );
  }
}

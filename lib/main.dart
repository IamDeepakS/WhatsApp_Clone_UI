import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/whatsapp_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhatsappHome(),
    );
  }
}

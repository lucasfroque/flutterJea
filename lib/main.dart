import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(ControlAtividadesApp());
}

class ControlAtividadesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Atividades',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

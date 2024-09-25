import 'package:flutter/material.dart';
import 'activity_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Controle de Atividades')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Atividades Registradas:'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityPage()),
                );
              },
              child: Text('Adicionar Atividade'),
            ),
          ],
        ),
      ),
    );
  }
}

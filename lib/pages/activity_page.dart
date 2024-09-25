import 'package:flutter/material.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final TextEditingController _controller = TextEditingController();

  void _addActivity() {
    String activity = _controller.text;
    if (activity.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Atividade adicionada: $activity')),
      );
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Atividade')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Nome da Atividade'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addActivity,
              child: Text('Salvar Atividade'),
            ),
          ],
        ),
      ),
    );
  }
}

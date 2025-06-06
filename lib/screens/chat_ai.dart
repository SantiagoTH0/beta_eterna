import 'package:flutter/material.dart';

class ChatAIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat con IA'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text(
          'Aquí podrás chatear con la IA.',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
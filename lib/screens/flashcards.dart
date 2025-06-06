import 'package:flutter/material.dart';

class FlashcardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Aquí podrás crear y estudiar flashcards.',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}


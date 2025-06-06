import 'package:flutter/material.dart';

class QuickLessonsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minuto Sabio'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          'Aquí encontrarás lecciones rápidas y útiles.',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}


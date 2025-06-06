import 'package:flutter/material.dart';

class StudyYourStuffScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudia tu material'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Aquí podrás estudiar tu propio material.',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
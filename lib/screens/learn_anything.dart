import 'package:flutter/material.dart';
import '../services/ai_service.dart';

class LearnAnythingScreen extends StatefulWidget {
  @override
  _LearnAnythingScreenState createState() => _LearnAnythingScreenState();
}

class _LearnAnythingScreenState extends State<LearnAnythingScreen> {
  final TextEditingController _controller = TextEditingController();
  String _studyPlan = 'Aquí aparecerá tu plan de estudio sarcástico.';

  void _generateStudyPlan() async {
    final topic = _controller.text;
    if (topic.isNotEmpty) {
      final response = await AIService().generateSarcasticStudyPlan(topic);
      setState(() {
        _studyPlan = response;
      });
    } else {
      setState(() {
        _studyPlan = 'Por favor, escribe un tema primero.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aprende lo que sea'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Escribe un tema y te crearé un plan de estudio sarcástico:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Ejemplo: Historia de la tecnología',
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateStudyPlan,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Generar Plan de Estudio'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  _studyPlan,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}


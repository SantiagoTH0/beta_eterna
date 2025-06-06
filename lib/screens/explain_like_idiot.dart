import 'package:flutter/material.dart';
import '../services/ai_service.dart';

class ExplainLikeIdiotScreen extends StatefulWidget {
  @override
  _ExplainLikeIdiotScreenState createState() => _ExplainLikeIdiotScreenState();
}

class _ExplainLikeIdiotScreenState extends State<ExplainLikeIdiotScreen> {
  final TextEditingController _controller = TextEditingController();
  String _explanation = 'Aquí aparecerá la explicación sarcástica y divertida.';

  void _generateExplanation() async {
    final topic = _controller.text;
    if (topic.isNotEmpty) {
      final response = await AIService().generateSarcasticExplanation(topic);
      setState(() {
        _explanation = response;
      });
    } else {
      setState(() {
        _explanation = 'Por favor, escribe un tema primero.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explícame como si fuera tonto'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Escribe un tema y te lo explico como si fueras un burro feliz:',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Ejemplo: ¿Qué es una API?',
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
              onPressed: _generateExplanation,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              child: Text('Explícame'),
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
                  _explanation,
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

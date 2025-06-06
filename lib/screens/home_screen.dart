import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animación de bienvenida
            Lottie.asset('assets/animations/burro_dancing.json', height: 200),
            SizedBox(height: 20),
            Text(
              'BurroPeroAprendo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '“Bienvenido de nuevo... contra todo pronóstico.”',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            // Botones de navegación
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildNavButton(
                    context,
                    'Explícame como si fuera tonto',
                    Icons.lightbulb,
                    '/explain_like_idiot',
                  ),
                  _buildNavButton(
                    context,
                    'Aprende lo que sea',
                    Icons.school,
                    '/learn_anything',
                  ),
                  _buildNavButton(
                    context,
                    'Minuto Sabio',
                    Icons.timer,
                    '/quick_lessons',
                  ),
                  _buildNavButton(
                    context,
                    'Flashcards',
                    Icons.view_carousel,
                    '/flashcards',
                  ),
                  _buildNavButton(
                    context,
                    'Chat con IA',
                    Icons.chat,
                    '/chat_ai',
                  ),
                  _buildNavButton(
                    context,
                    'Estudia tu material',
                    Icons.upload_file,
                    '/study_your_stuff',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(
    BuildContext context,
    String title,
    IconData icon,
    String route,
  ) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 40),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

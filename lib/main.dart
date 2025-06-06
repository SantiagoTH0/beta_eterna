import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/explain_like_idiot.dart';
import 'screens/learn_anything.dart';
import 'screens/flashcards.dart';
import 'screens/chat_ai.dart';
import 'screens/study_your_stuff.dart';
import 'screens/quick_lessons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BurroPeroAprendo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/explain_like_idiot': (context) => ExplainLikeIdiotScreen(),
        '/learn_anything': (context) => LearnAnythingScreen(),
        '/flashcards': (context) => FlashcardsScreen(),
        '/chat_ai': (context) => ChatAIScreen(),
        '/study_your_stuff': (context) => StudyYourStuffScreen(),
        '/quick_lessons': (context) => QuickLessonsScreen(),
      },
    );
  }
}

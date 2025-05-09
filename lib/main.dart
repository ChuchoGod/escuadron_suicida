import 'package:escuadron_suicida/config/theme/app_theme.dart';
import 'package:escuadron_suicida/presentation/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 3).theme(),
      home: const ChatScreen()
    );
  }
}
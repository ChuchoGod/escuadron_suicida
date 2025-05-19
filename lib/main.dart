import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:escuadron_suicida/config/themes/app_theme.dart';
import 'package:escuadron_suicida/presentation/providers/chat_provider.dart';
import 'package:escuadron_suicida/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),
        home: ChatScreen()
      ),
    );
  }
}
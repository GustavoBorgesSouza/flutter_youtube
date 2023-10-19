import 'package:flutter/material.dart';
import 'package:poc_youtube/youtube_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _theme,
      title: 'Youtube Player Poc',
      home: const YoutubePage(),
    );
  }

  final ThemeData _theme = ThemeData(
    colorSchemeSeed: Colors.deepPurple,
    useMaterial3: true,
  );
}

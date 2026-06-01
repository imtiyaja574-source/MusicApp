
import 'package:flutter/material.dart';
import 'package:music_app/music.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
// this is my music app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.brown,
          brightness: Brightness.light,
        )
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown,
        brightness: Brightness.dark)
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
     home: MusicApp(),

    );
  }
}



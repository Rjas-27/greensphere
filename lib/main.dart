import 'package:flutter/material.dart';
import 'screens/login_page.dart'; // Mengimpor login_page.dart
import 'screens/home.dart'; // Mengimpor home.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Blog',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(), // Gunakan LoginPage sebagai home awal
      routes: {
        '/home': (context) => HomePage(), // Rute ke HomePage
      },
      debugShowCheckedModeBanner: false, // Menghilangkan label debug
    );
  }
}

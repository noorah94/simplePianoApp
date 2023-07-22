import 'package:flutter/material.dart';
import 'package:sounds_with_colors_t2task/screens/HomePage.dart';

void main() => runApp( MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sounds with colors demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}

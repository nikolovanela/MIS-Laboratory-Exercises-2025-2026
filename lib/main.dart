import 'package:flutter/material.dart';
import 'screens/exam_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raspored na ispiti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExamListScreen(indexNumber: "221045"),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';

class ExamListScreen extends StatelessWidget {
  final String indexNumber;

  ExamListScreen({super.key, required this.indexNumber});

  final List<Exam> exams = [
    Exam(subject: "Мобилни информациски системи", dateTime: DateTime(2025, 11, 15, 10, 0), rooms: ["Лаб 12, Лаб 13"]),
    Exam(subject: "Вовед во рударење на масивни податоци ", dateTime: DateTime(2025, 11, 09, 12, 0), rooms: ["Лаб 2, Лаб 3"]),
    Exam(subject: "Бази на податоци", dateTime: DateTime(2025, 11, 18, 14, 0), rooms: ["Лаб 2, Лаб 3"]),
    Exam(subject: "Веб Програмирање", dateTime: DateTime(2025, 11, 19, 9, 0), rooms: ["Лаб 200AB, Лаб 215"]),
    Exam(subject: "Дизајн и архитектура на софтвер", dateTime: DateTime(2025, 11, 10, 11, 0), rooms: ["Лаб 215, Лаб 117"]),
    Exam(subject: "Калкулус", dateTime: DateTime(2025, 11, 21, 13, 0), rooms: ["Амфитеатар ФИНКИ, Барака 1, АМФ МФ"]),
    Exam(subject: "Веројатност и статистика", dateTime: DateTime(2025, 11, 22, 10, 0), rooms: ["Амфитеатар ФИНКИ, Барака 1, АМФ МФ"]),
    Exam(subject: "Структурно програмирање", dateTime: DateTime(2025, 11, 23, 15, 0), rooms: ["Лаб 13, Лаб 117"]),
    Exam(subject: "Објектно програмирање", dateTime: DateTime(2025, 11, 24, 9, 0), rooms: ["Лаб 215, Лаб 117"]),
    Exam(subject: "Алгоритми и податочни структури", dateTime: DateTime(2025, 11, 25, 12, 0), rooms: ["Лаб 2, Лаб 3, Лаб 12"]),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return Scaffold(
      appBar: AppBar(
        title: Text("Распоред за испити - $indexNumber"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: exams.length,
              itemBuilder: (context, index) {
                return ExamCard(exam: exams[index]);
              },
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: Text(
                "Вкупно испити: ${exams.length}",
                style: const TextStyle(
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

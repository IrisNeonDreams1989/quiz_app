import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
              color:const Color.fromARGB(255, 127, 219, 243), //với 100 để làm độ mờ thay vì dùng Opacity để tránh giảm hiệu suất
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Learn Flutter the fun way',
              style: GoogleFonts.lato(
                fontSize: 24,
                color: const Color.fromARGB(255, 127, 219, 243),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              icon: Icon(
                Icons.arrow_right_alt,
                color: const Color.fromARGB(255, 127, 219, 243),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: Colors.transparent), // Make border transparent
              ),
              label: const Text(
                'Start Quiz',
                style: TextStyle(color: const Color.fromARGB(255, 127, 219, 243),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

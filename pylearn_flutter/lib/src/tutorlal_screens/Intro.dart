import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class PythonTutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Python Tutorial'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Целочисленный тип данных',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Целые числа в Python представлены типом данных int (integer - целое число).',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Для преобразования строки в целое число, мы используем команду int():',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            HighlightView(
              '''
# Example Python code
x = 10
y = 20
sum = x + y
print("Sum:", sum)
              ''',
              language: 'python',
              theme: githubTheme,
            ),
          ],
        ),
      ),
    );
  }
}

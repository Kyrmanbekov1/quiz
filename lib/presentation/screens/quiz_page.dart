import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Викторина'),
      ),
      body: FutureBuilder(
        future: getopentab(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            // Здесь вы можете использовать данные из API для отображения
            // первого вопроса на экране.
            return Center(
              child: Text('Первый вопрос: ${snapshot.data}'),
            );
          }
        },
      ),
    );
  }
  
  getopentab() {}
}
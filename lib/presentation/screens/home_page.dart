import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_9/route/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adi'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          IconButton(onPressed: (){
            AutoRouter.of(context).push(const QuizRoute());
          },
           icon: Icon(Icons.arrow_right),),
          Center(
            
            child: Image.network('https://insomniac.games/wp-content/uploads/2018/09/Spider-Man_PS4_Selfie_Photo_Mode_LEGAL.jpg'),
            
            
          ),
        ],
      ),
    );
  }
 
}
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_9/presentation/screens/home_page.dart';
import 'package:flutter_application_9/presentation/screens/quiz_page.dart';

part 'app_router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
   AutoRoute(page: HomeRoute.page,
   initial: true,
   children: [],
   
   ),
   AutoRoute(page: 
   QuizRoute.page,
),
   ]    ;
 }
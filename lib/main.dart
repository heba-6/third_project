import 'package:flutter/material.dart';
import 'package:third_project/WhatsAppScreen.dart';
import 'package:third_project/ExploreScreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppScreen(),
    );
  }
}

/*
 لو سمحت يا بشمهندس
 ممكن ناخد بريك صغير من التاسكات يوم بس نعمل فيه صيانة بشرية؟ 😅  
 علشان دماغنا جابت ايرور والمفروض بعد تاسك النهاردة اللي مكانش بيتظبط اصلا ده نريح شوية
 لوسمحت🥹
*/
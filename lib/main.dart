import 'package:flutter/material.dart';
import 'package:movie_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Application',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 2, 18, 31)
       

      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

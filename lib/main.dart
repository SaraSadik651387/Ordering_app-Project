import 'package:flutter/material.dart';
import 'package:ordering_app_project/widget/welcome_widget.dart';
//import 'package:flutter_application_4/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) :super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowMaterialGrid: false,
        title: 'Flutter Demo SARAH',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
        ),
        home: WelcomeWedget()
        );
  }
}

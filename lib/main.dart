import 'package:flutter/material.dart';
import 'package:shared_sample/controller/homeScreen_controller/homescreen_controller.dart';
import 'package:shared_sample/view/home_screen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HomescreenController;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

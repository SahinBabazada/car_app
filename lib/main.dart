import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const Car());
}

class Car extends StatelessWidget {
  const Car({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromRGBO(243, 245, 247, 1)),
      home: const HomeScreen(),
    );
  }
}

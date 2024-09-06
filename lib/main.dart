import 'package:flutter/material.dart';
import 'package:july_2024/view/Screens/HomePage/home_page.dart';


void main() {
  runApp(const July2024());
}

class July2024 extends StatelessWidget {
  const July2024({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

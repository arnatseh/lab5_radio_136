import 'package:flutter/material.dart';
import 'package:lab5_136/page/firstpage.dart';

void main() {
  runApp(const Firstpage());
}

class Firstpage extends StatelessWidget {
  const Firstpage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}

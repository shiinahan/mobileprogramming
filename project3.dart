import 'package:flutter/material.dart';
import 'package:project3/launcherpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "project mockup aplikasi goject",
      theme: ThemeData(
        fontFamily: "NeoSans",
        // primaryColor:
      ),
      home: LaucherPage(),
    );
  }
}

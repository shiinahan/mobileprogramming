import 'dart:async';

import 'package:flutter/material.dart';


class LaucherPage extends StatefulWidget {
  const LaucherPage({super.key});

  @override
  State<LaucherPage> createState() => _LaucherPageState();
}

class _LaucherPageState extends State<LaucherPage> {
@override
  void initState() {
    super.initState();
    startlaunching();
  }

  startlaunching()async{
    var duration =Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){
        return landingpage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          "https://avatars.githubusercontent.com/u/88758434?v=4",
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}

class landingpage extends StatelessWidget {
  const landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),
      ),
    );
  }
}

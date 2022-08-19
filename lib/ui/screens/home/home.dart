import 'package:chat/ui/screens/home/input_section.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        Expanded(
          child: Center(child: Text('Chat goes here ...')),
        ),
        InputSection()
      ]),
    );
  }
}

import 'package:chat/ui/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Color(0xFF0055FF);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: MaterialColor(primaryColor.value, const <int, Color>{
          50: Color(0xffe9ebff),
          100: Color(0xffc7cdff),
          200: Color(0xffa0aeff),
          300: Color(0xff738dff),
          400: Color(0xff4b71ff),
          500: primaryColor,
          600: Color(0xff004cf3),
          700: Color(0xff0040e6),
          800: Color(0xff0034db),
          900: Color(0xff001acb),
        }),
      ),
      home: const Home(),
    );
  }
}

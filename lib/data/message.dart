import 'package:flutter/material.dart';

enum Person { ME, YOU }

class Message {
  Message({
    Key? key,
    required this.text,
    required this.person,
  }) {
    timestamp = DateTime.now();
  }

  final String text;
  late final DateTime timestamp;
  final Person person;
}

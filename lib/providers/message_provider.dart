import 'package:flutter/material.dart';

import '../data/message.dart';

class MessageProvider extends ChangeNotifier {
  List<Message> _messages = [];

  List<Message> get messgesList => _messages;

  void addMessages(Message message) {
    _messages.add(message);
    notifyListeners();
  }
}

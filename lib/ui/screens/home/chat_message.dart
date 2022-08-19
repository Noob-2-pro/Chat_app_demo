import 'package:chat/data/message.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key, required this.message}) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    final isFirstPerson = message.person == Person.ME;
    final textColor = isFirstPerson ? Colors.white : Colors.black;
    var borderRadius = BorderRadius.circular(16);
    borderRadius = isFirstPerson
        ? borderRadius.copyWith(bottomRight: Radius.zero)
        : borderRadius.copyWith(bottomLeft: Radius.zero);
    final bgColor =
        isFirstPerson ? Theme.of(context).primaryColor : Colors.white;
    return Row(
      mainAxisAlignment: message.person == Person.ME
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            margin: const EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: bgColor,
            ),
            child: Row(children: [
              Expanded(
                  child: Text(
                message.text,
                style: TextStyle(color: textColor, fontSize: 12, height: 1.5),
              )),
            ]),
          ),
        )
      ],
    );
  }
}

import 'package:chat/data/message.dart';
import 'package:chat/providers/message_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InputSection extends StatefulWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  late final TextEditingController textController = TextEditingController();
  Person person = Person.ME;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) {
                    if (person == Person.ME) {
                      return Colors.blue;
                    } else {
                      return Colors.grey;
                    }
                  })),
                  onPressed: (() {
                    person = Person.ME;
                    setState(() {});
                  }),
                  child: const Text('Me'),
                  // style: const ButtonStyle(),
                ),
                const SizedBox(width: 24),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) {
                      if (person == Person.YOU) {
                        return Colors.blue;
                      } else {
                        return Colors.grey;
                      }
                    })),
                    onPressed: (() {
                      person = Person.YOU;
                      setState(() {});
                    }),
                    child: const Text('You'))
              ],
            ),
            Row(children: [
              Expanded(
                  child: TextField(
                autofocus: true,
                controller: textController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(hintText: 'Type here ...'),
              )),
              IconButton(
                  onPressed: () {
                    Provider.of<MessageProvider>(context, listen: false).addMessages(
                      Message(
                        text: textController.text,
                        person: person,
                      ),
                    );
                  },
                  icon: const Icon(Icons.send))
            ]),
          ],
        ));
  }
}

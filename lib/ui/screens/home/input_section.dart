import 'package:flutter/material.dart';

class InputSection extends StatefulWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  late final TextEditingController textController = TextEditingController();

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
                  onPressed: (() {}),
                  child: const Text('Me'),
                  style: const ButtonStyle(),
                ),
                const SizedBox(width: 24),
                ElevatedButton(onPressed: (() {}), child: const Text('You'))
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
              IconButton(onPressed: () {}, icon: const Icon(Icons.send))
            ]),
          ],
        ));
  }
}

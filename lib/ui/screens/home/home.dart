import 'package:chat/constant.dart';
import 'package:chat/providers/message_provider.dart';
import 'package:chat/ui/screens/home/chat_message.dart';
import 'package:chat/ui/screens/home/input_section.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  // List<Message> messages = [];

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
      body: Column(
        children: [
          Consumer<MessageProvider>(builder: (context, messageProvider, _) {
            return Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                color: primaryColor.withOpacity(0.2),
                child: ListView.builder(
                  reverse: true,
                  itemCount: messageProvider.messgesList.length,
                  itemBuilder: (context, index) {
                    return ChatMessage(message: messageProvider.messgesList[messageProvider.messgesList.length - 1 - index]);
                  },
                ),
              ),
            );
          }),
          InputSection()
        ],
      ),
    );
  }
}


// List<int> a = [1,2,3,4,5,6,7,8];

// int i = 0;
// int j = a.length-1;

// while(true){

// int temp = a[i];
// a[i] =

// }

// 0,5

// (a.lenght -1 - i)




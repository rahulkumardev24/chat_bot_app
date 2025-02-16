import 'package:chat_bot_app/model/message_model.dart';
import 'package:chat_bot_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../utils/util_helper.dart';

class ChatScreen extends StatefulWidget {
  String query;
  ChatScreen({super.key, required this.query});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageModel> listMsg = [];

  /// time format
  DateFormat dateFormat = DateFormat().add_jm();

  @override
  void initState() {
    super.initState();
    listMsg.add(MessageModel(
        msg: widget.query,
        sendAt: DateTime.now().millisecondsSinceEpoch.toString(),
        sendId: 0));
    listMsg.add(MessageModel(
        msg: "This is the response of your a query on the give questions",
        sendAt: DateTime.now().millisecondsSinceEpoch.toString(),
        sendId: 1));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/robot.png",
              height: 30,
            ),
            Text.rich(
              TextSpan(
                text: "Chat",
                style: mTextStyle25(fontColor: Colors.white),
                children: [
                  TextSpan(
                    text: "bot",
                    style: mTextStyle25(fontColor: Colors.orange),
                  ),
                ],
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.orange.shade200.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                  icon: const Icon(Icons.arrow_back_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  })),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(100)),
                child:
                    IconButton(icon: const Icon(Icons.face), onPressed: () {})),
          ),
        ],
      ),
      body: Column(
        children: [
          /// ---------------- Chat List ----------------------- ///
          Expanded(
              child: ListView.builder(
                  reverse: true,
                  itemCount: listMsg.length,
                  itemBuilder: (context, index) {
                    return listMsg[index].sendId == 0
                        ? userChatBox(listMsg[index])
                        : botChatBox(listMsg[index]);
                  })),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: mTextStyle18(fontColor: Colors.white70),
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                suffixIcon: const Icon(
                  Icons.send,
                  color: Colors.orange,
                ),
                hintText: "Write a question!",
                hintStyle: mTextStyle18(fontColor: Colors.white38),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// custom widgets
  /// Right Side - User Chat Box
  Widget userChatBox(MessageModel msgModel) {
    var time = dateFormat.format(
        DateTime.fromMillisecondsSinceEpoch(int.parse(msgModel.sendAt!)));
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          ),
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              msgModel.msg!,
              style: mTextStyle18(fontColor: Colors.white70),
            ),
            Text(
              time,
              style: mTextStyle11(
                fontColor: Colors.white38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Left Side - Bot Chat Box
  Widget botChatBox(MessageModel msgModel) {
    var time = dateFormat.format(
        DateTime.fromMillisecondsSinceEpoch(int.parse(msgModel.sendAt!)));
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(21),
            topRight: Radius.circular(21),
            bottomRight: Radius.circular(21),
          ),
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              msgModel.msg!,
              style: mTextStyle18(fontColor: Colors.black87),
            ),
            Text(
              time,
              style: mTextStyle11(
                fontColor: Colors.white54,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

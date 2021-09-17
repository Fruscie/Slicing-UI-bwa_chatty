// ignore_for_file: prefer_const_constructors

import 'package:bwa_chatty/const/color.dart';
import 'package:bwa_chatty/widget/header.dart';
import 'package:bwa_chatty/widget/input_chat.dart';
import 'package:bwa_chatty/widget/receive_bubble.dart';
import 'package:bwa_chatty/widget/sender_bubble.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: inputChat(),
      backgroundColor: whiteColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Header(),
            SizedBox(
              height: 30,
            ),
            ReceiveBubble(
              text: 'How are ya guys?',
              time: '2:30',
              imageUrl: 'assets/images/friend1.png',
            ),
            ReceiveBubble(
              text: 'Find here :P',
              time: '3:11',
              imageUrl: 'assets/images/friend3.png',
            ),
            SenderBubble(
              text1: 'Thinking about how to deal',
              text2: 'with this client from hell',
              time: '22:08',
              imageUrl: 'assets/images/profile_pic.png',
            ),
            ReceiveBubble(
              text: 'Love them',
              time: '23:11',
              imageUrl: 'assets/images/friend2.png',
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:bwa_chatty/const/color.dart';
import 'package:bwa_chatty/pages/message_page.dart';
import 'package:bwa_chatty/styles/font_styles.dart';
import 'package:bwa_chatty/widget/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: FloatingActionButton(
            backgroundColor: greenColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const MessagePage()));
            },
            child: const Icon(
              Icons.add,
              size: 28,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: nameTS,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: jobTS,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTS,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const ChatTile(
                        name: 'Joshuer',
                        text: "Sorry, you're not my ty..",
                        time: 'Now',
                        imageUrl: 'assets/images/friend1.png',
                        unread: true,
                      ),
                      const ChatTile(
                        name: 'Gabriella',
                        text: "I saw it clearly and mig..",
                        time: '2:30',
                        imageUrl: 'assets/images/friend2.png',
                        unread: false,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTS,
                      ),
                      const ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca..',
                        time: '11:11',
                        unread: false,
                      ),
                      const ChatTile(
                          imageUrl: 'assets/images/group2.png',
                          name: 'Angga',
                          text: 'Here here we can go..',
                          time: '7:11',
                          unread: true),
                      const ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        text: 'The car which does not..',
                        time: '7:11',
                        unread: true,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}

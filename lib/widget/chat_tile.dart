// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:bwa_chatty/const/color.dart';
import 'package:bwa_chatty/styles/font_styles.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTS,
              ),
              Text(
                text,
                style: unread
                    ? subTitleTS.copyWith(
                        color: blackColor, fontWeight: FontWeight.w500)
                    : subTitleTS,
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: subTitleTS,
          )
        ],
      ),
    );
  }
}

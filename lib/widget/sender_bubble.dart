import 'package:bwa_chatty/const/color.dart';
import 'package:bwa_chatty/styles/font_styles.dart';
import 'package:flutter/material.dart';

class SenderBubble extends StatelessWidget {
  const SenderBubble({
    Key? key,
    required this.imageUrl,
    required this.text1,
    required this.text2,
    required this.time,
  }) : super(key: key);
  final String imageUrl;
  final String text1;
  final String text2;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          color: whiteColor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                text1,
                style: titleTS,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                text2,
                style: titleTS,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                time,
                style: subTitleTS,
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}

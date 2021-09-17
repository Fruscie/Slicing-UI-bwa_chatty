import 'package:bwa_chatty/const/color.dart';
import 'package:bwa_chatty/styles/font_styles.dart';
import 'package:flutter/cupertino.dart';

class ReceiveBubble extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  const ReceiveBubble(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.time})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: bubbleColor),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11.0, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: titleTS,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: titleTS.copyWith(color: greyColor, fontSize: 14),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

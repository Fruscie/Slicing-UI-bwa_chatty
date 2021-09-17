import 'package:bwa_chatty/const/color.dart';
import 'package:bwa_chatty/styles/font_styles.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class inputChat extends StatelessWidget {
  const inputChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(75)),
      child: Row(
        children: [
          Text('Type message ...', style: titleTS.copyWith(color: greyColor)),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/images/send_btn.png',
              height: 40,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}

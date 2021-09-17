import 'package:bwa_chatty/styles/font_styles.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 115,
      child: Row(
        children: [
          Image.asset(
            'assets/images/group1.png',
            height: 55,
            width: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Jakarta Fair',
                style: titleTS,
              ),
              Text(
                '14.209 members',
                style: subTitleTS,
              )
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/images/call_btn.png',
            height: 55,
            width: 55,
          )
        ],
      ),
    );
  }
}

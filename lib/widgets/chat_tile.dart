import 'package:flutter/material.dart';
import 'package:uitocode/themes/chatty_themes.dart';

class ChatTile extends StatelessWidget {
  // variabel lempar data
  final String imageUrl;
  final String name;
  final String text;
  final String time;

  const ChatTile(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: titleText,
                ),
                Text(
                  text,
                  style: subTitleText,
                  overflow: TextOverflow.ellipsis,
                  // maxLines: 1,
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            time,
            style: subTitleText,
          ),
        ],
      ),
    );
  }
}

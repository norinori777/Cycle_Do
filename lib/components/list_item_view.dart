import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListItemView extends StatelessWidget {
  const ListItemView({super.key, required this.iconPath, required this.title, required this.content, required this.accessedDate });

  final String iconPath;
  final String title;
  final String content;
  final DateTime accessedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 左側にアイコン
          SvgPicture.asset(
            iconPath,
            width: 42,
            height: 42,
            semanticsLabel: 'Cycle Icon',
          ),
          // 真ん中にタイトルと説明
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    content,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          // 右側に日付
          Text(
            DateFormat.yMEd().format(accessedDate),
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
import 'package:cycle_do/domains/cycle_target_view_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListItemView extends StatelessWidget {
  const ListItemView({super.key, required this.iconPath, required this.title, required this.description, required this.accessedDate });

  final String iconPath;
  final String title;
  final String description;
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
            width: 24,
            height: 24,
          ),
          // 真ん中にタイトルと説明
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          // 右側に日付
          Text(
            DateFormat.yMEd().format(accessedDate),
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget itemBuilder(BuildContext context, CycleTargetViewModel item) {
  return ListItemView(
    iconPath: item.iconPath,
    title: item.title,
    description: item.content,
    accessedDate: item.accessedDate
  );
}
}
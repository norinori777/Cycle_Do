import 'package:flutter/cupertino.dart';

class CustomListView<T> extends StatelessWidget {
  const CustomListView({super.key, required this.listData, required this.itemBuilder});

  final List<T> listData;
  final Widget Function(BuildContext, T) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          return itemBuilder(context, listData[index]);
        },
      ),
    );
  }
}
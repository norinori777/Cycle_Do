import 'package:cycle_do/components/custom_list_view.dart';
import 'package:flutter/material.dart';

import 'package:cycle_do/domains/cycle.dart';
import 'package:cycle_do/domains/cycle_target_title.dart';
import 'package:cycle_do/domains/cycle_target_content.dart';
import 'package:cycle_do/domains/cycle_target.dart';

import '../components/list_item_view.dart';
import '../domains/cycle_target_view_model.dart';
import '../domains/cycle_target_view_models.dart';


class ListCycleTargetPage extends StatelessWidget {
  ListCycleTargetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CycleTarget> cycleTargets = [
      CycleTarget(
        id: 1,
        cycle: Cycle.create(1),
        title: CycleTargetTitle.create('Title 1'),
        content: CycleTargetContent.create('Content for Target 1'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 2,
        cycle: Cycle.create(2),
        title: CycleTargetTitle.create('Title 2'),
        content: CycleTargetContent.create('Content for Target 2'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 3,
        cycle: Cycle.create(3),
        title: CycleTargetTitle.create('Title 3'),
        content: CycleTargetContent.create('Content for Target 3'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 4,
        cycle: Cycle.create(4),
        title: CycleTargetTitle.create('Title 4'),
        content: CycleTargetContent.create('Content for Target 4'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 5,
        cycle: Cycle.create(5),
        title: CycleTargetTitle.create('Title 5'),
        content: CycleTargetContent.create('Content for Target 5'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 6,
        cycle: Cycle.create(1),
        title: CycleTargetTitle.create('Title 6'),
        content: CycleTargetContent.create('Content for Target 6'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 7,
        cycle: Cycle.create(2),
        title: CycleTargetTitle.create('Title 7'),
        content: CycleTargetContent.create('Content for Target 7'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 8,
        cycle: Cycle.create(1),
        title: CycleTargetTitle.create('Title 1'),
        content: CycleTargetContent.create('Content for Target 1'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 9,
        cycle: Cycle.create(1),
        title: CycleTargetTitle.create('Title 1'),
        content: CycleTargetContent.create('Content for Target 1'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
      CycleTarget(
        id: 10,
        cycle: Cycle.create(1),
        title: CycleTargetTitle.create('Title 1'),
        content: CycleTargetContent.create('Content for Target 1'),
        createdDate: DateTime.now(),
        accessedDate: DateTime.now(),
      ),
    ];
    final cycleTargetViewModels = CycleTargetViewModels.create(cycleTargets: cycleTargets);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cycle Targets'),
      ),
      body: CustomListView<CycleTargetViewModel>(
        listData: cycleTargetViewModels.getCycleTargetViewModels,
        itemBuilder: (BuildContext context, CycleTargetViewModel item) {
          return ListItemView(
            iconPath: item.iconPath,
            title: item.title,
            content: item.content,
            accessedDate: item.accessedDate,
          );
        },
      ),
    );
  }
}
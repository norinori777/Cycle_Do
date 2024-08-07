// lib/domains/CycleData.dart
import 'cycle_target.dart';

class CycleTargetViewModel {
  final int id;
  final String iconPath;
  final String title;
  final String content;
  final DateTime createdDate;
  final DateTime accessedDate;

  CycleTargetViewModel({
    required this.id,
    required this.iconPath,
    required this.title,
    required this.content,
    required this.createdDate,
    required this.accessedDate,
  });

  factory CycleTargetViewModel.create(CycleTarget cycleTarget) {
    return CycleTargetViewModel(
      id: cycleTarget.id,
      iconPath: cycleTarget.cycle.getIconSvgGen.path,
      title: cycleTarget.title.getTitle,
      content: cycleTarget.content.getContent,
      createdDate: cycleTarget.createdDate,
      accessedDate: cycleTarget.accessedDate,
    );
  }
}
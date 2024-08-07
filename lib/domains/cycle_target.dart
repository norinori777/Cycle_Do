// lib/domains/CycleTarget.dart
import 'package:cycle_do/domains/cycle_target_title.dart';
import 'package:cycle_do/domains/cycle_target_content.dart';
import 'cycle.dart';

class CycleTarget {
  final int id;
  final Cycle cycle;
  final CycleTargetTitle title;
  final CycleTargetContent content;
  final DateTime createdDate;
  final DateTime accessedDate;

  CycleTarget({
    required this.id,
    required this.cycle,
    required this.title,
    required this.content,
    required this.createdDate,
    required this.accessedDate,
  });
}
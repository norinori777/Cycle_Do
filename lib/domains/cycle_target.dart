// lib/domains/CycleTarget.dart
import 'package:cycle_do/domains/title.dart';

import 'content.dart';
import 'cycle.dart';

class CycleTarget {
  final int id;
  final Cycle cycle;
  final Title title;
  final Content content;
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
import '../gen/assets.gen.dart';

enum Cycle {
  one(cycle: 1, time: 3600), // 1 hour
  two(cycle: 2, time: 86400), // 1 day
  three(cycle: 3, time: 604800), // 1 week
  four(cycle: 4, time: 2592000), // 30 days
  five(cycle: 5, time: 7776000); // 90 days

  final int cycle;
  final int time;

  const Cycle({required this.cycle,required this.time});

  factory Cycle.create(int cycle) {
    switch (cycle) {
      case 1:
        return Cycle.one;
      case 2:
        return Cycle.two;
      case 3:
        return Cycle.three;
      case 4:
        return Cycle.four;
      case 5:
        return Cycle.five;
      default:
        throw Exception('Invalid cycle');
    }
  }

  int get cycleTime => time;
  int get cycleNumber => cycle;

  SvgGenImage get getIconSvgGen {
    switch (this) {
      case Cycle.one:
        return Assets.circle1;
      case Cycle.two:
        return Assets.circle2;
      case Cycle.three:
        return Assets.circle3;
      case Cycle.four:
        return Assets.circle4;
      case Cycle.five:
        return Assets.circle5;
    }
  }
}
import 'cycle_target.dart';
import 'cycle_target_view_model.dart';

class CycleTargetViewModels {
  final List<CycleTargetViewModel> cycleTargetViewModels;
  CycleTargetViewModels({required this.cycleTargetViewModels});

  factory CycleTargetViewModels.create({required List<CycleTarget> cycleTargets}) {
    List<CycleTargetViewModel> cycleTargetViewModels = [];

    for (var cycleTarget in cycleTargets) {
      cycleTargetViewModels.add(CycleTargetViewModel.create(cycleTarget));
    }
    return CycleTargetViewModels(cycleTargetViewModels:cycleTargetViewModels);
  }

  List<CycleTargetViewModel> get getCycleTargetViewModels => cycleTargetViewModels;
}
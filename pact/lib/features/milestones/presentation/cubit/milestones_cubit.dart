import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'milestones_state.dart';

class MilestonesCubit extends Cubit<MilestonesState> {
  MilestonesCubit() : super(MilestonesInitial());
}

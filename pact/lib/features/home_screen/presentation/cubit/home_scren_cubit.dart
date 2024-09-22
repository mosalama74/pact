import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_scren_state.dart';

class HomeScrenCubit extends Cubit<HomeScrenState> {
  HomeScrenCubit() : super(HomeScrenInitial());
}

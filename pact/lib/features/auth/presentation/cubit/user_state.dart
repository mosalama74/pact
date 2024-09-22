part of 'user_cubit.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

final class LoginLoadingState extends UserState {}
final class LoginSuccessState extends UserState {}
final class LoginErrorState extends UserState {
  final String errorMessage;
   LoginErrorState({required this.errorMessage});
}

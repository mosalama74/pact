import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pact/core/api/api_consumer.dart';
import 'package:pact/core/errors/exceptions.dart';

import '../../../../core/api/api_end_points.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());

  static UserCubit get(context) => BlocProvider.of(context);
  final ApiConsumer api;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  signIn() async {
    try {
      emit(LoginLoadingState());
    final response = await api.post(
      Endpoints.signIn,
      data: {
        ApiKey.email: emailController.text,
        ApiKey.password: passwordController.text,
      },
       );
       emit(LoginSuccessState());
    }on ServerException catch (e) {
     emit(LoginErrorState(errorMessage: e.errorModel.errorMessage));
    }
}
}
import '../api/api_end_points.dart';

class ErrorModel {
  ErrorModel({required this.errorMessage, required this.status});

  final String errorMessage;
  final int status;

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      errorMessage: json[ApiKey.errorMessage],
      status: json[ApiKey.status],
    );
  }
}

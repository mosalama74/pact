import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor { // this class is for intercepting request and response
@override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) { 

// send headers with request not inside it;

   /*  options.headers['Content-Type'] = 'application/json'; send requests with headers as order from api 
    options.headers['AcceptLanguage'] = 'en'; 
    options.headers['token'] = 'token'; */
    super.onRequest(options, handler);
  }
}
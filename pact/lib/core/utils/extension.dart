import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void navigateTo(Widget widget) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => widget));
  }

  void navigateToAndRemoveAll(Widget widget) {
    Navigator.pushAndRemoveUntil(
        this, MaterialPageRoute(builder: (context) => widget), (route) => false);
  }

  void navigateBack(){
    Navigator.of(this).pop();
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pwVisibleProvider = ChangeNotifierProvider(
  (ref) => PwVisibilityNotifier(),
);

class PwVisibilityNotifier extends ChangeNotifier {
  bool _isPasswordObscured = true;
  bool get isPasswordObscured => _isPasswordObscured;

  void togglePwVisibility() {
    _isPasswordObscured = !_isPasswordObscured;
    notifyListeners();
  }
}

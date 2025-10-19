import 'package:flutter_modular_architecture/MainAppProvider.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

  var name = getAppName();
}

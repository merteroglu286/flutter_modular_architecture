import 'package:datastore/provider/SessionProviderImpl.dart';
import 'package:domain/model/failure.dart';
import 'package:domain/model/localised_message.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

  var session = DevSessionProviderImpl();
  var failure = Failure(303, LocalisedMessage("message", "mesaj"));
}

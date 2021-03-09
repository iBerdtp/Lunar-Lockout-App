import 'package:lunar_lockout/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() =>
      Error.safeToString("VALUE ERROR. FAILURE: $valueFailure");
}

class NoGameError extends Error {
  @override
  String toString() => Error.safeToString(
      "Game widget does not contain a game, but an operation on it has been requested");
}

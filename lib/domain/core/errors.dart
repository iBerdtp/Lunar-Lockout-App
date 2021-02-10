import 'package:lunar_lockout/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() => Error.safeToString("ERROR. FAILURE: $valueFailure");
}

import 'package:dartz/dartz.dart';
import 'package:lunar_lockout/domain/core/failures.dart';
import 'package:lunar_lockout/domain/game_logic/bfs.dart';
import 'package:lunar_lockout/domain/game_logic/board.dart';
import 'package:lunar_lockout/domain/game_logic/game.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (!RegExp(emailRegex).hasMatch(input)) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length < 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else {
    return right(input);
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:lunar_lockout/domain/core/errors.dart';

import 'package:lunar_lockout/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();

  T getOrCrash() => value.fold((l) => throw UnexpectedValueError(l), id);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';

  bool isValid() => value.isRight();
}

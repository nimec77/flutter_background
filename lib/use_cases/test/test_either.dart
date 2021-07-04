import 'package:dartz/dartz.dart';

class TestEither {
  Either<Exception, int> test({bool isRight = true}) {
    return isRight ? right(42) : left(Exception('Test error'));
  }
}

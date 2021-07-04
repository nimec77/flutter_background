import 'package:flutter_background/use_cases/test/test_either.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final TestEither testEither;

  setUpAll(() {
    testEither = TestEither();
  });

  test('Either test right', () {
    final result = testEither.test();

    expect(result.isRight(), true);
  });

  test('Either test right value', () {
    final result = testEither.test();

    final value = result.getOrElse(() => throw AssertionError("Can't get value"));

    expect(value, 42);
  });

  test('Either test left', () {
    final result = testEither.test(isRight: false);

    expect(result.isLeft(), true);
  });

  test('Either test left value', () {
    testEither.test(isRight: false).leftMap((Exception exception) {
      expect(exception, isA<Exception>());
      expect(exception.toString(), 'Exception: Test error');
    });


  });
}

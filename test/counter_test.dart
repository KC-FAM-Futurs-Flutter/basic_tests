import 'package:basic_tests/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter Class Tests', () {
    late Counter counter;

    setUp(() {
      counter = Counter();
    });

    test('Initial value should be 0', () {
      expect(counter.value, 0);
    });

    test('Increment increase value by 1', () {
      counter.increment();
      expect(counter.value, 1);
    });

    test('Decrement Decreases value by 1', () {
      counter.decrement();
      expect(counter.value, -1);
    });

    test('Reset sets value to 0', () {
      counter.increment();
      counter.reset();
      expect(counter.value, 0);
    });
  });
}

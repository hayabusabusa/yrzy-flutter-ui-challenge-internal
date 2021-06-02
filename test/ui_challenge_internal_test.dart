import 'package:flutter_test/flutter_test.dart';

import 'package:ui_challenge_internal/ui_challenge_internal.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}

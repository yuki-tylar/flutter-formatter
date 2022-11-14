import 'package:formatter/flutter_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  ({
    'this is test': 'ThisIsTest',
    'this is test 2': 'ThisIsTest2',
    'This[]Is[]Test': 'ThisIsTest',
    'This [] is test with 123 45 numbers': 'ThisIsTestWith12345Numbers',
  }).forEach((input, expected) {
    test('Basic Test: Check if pascalCaseFormattter works: $input', () {
      expect(Formatter.pascalCase(input), expected);
    });
  });

  ({
    'this is test': 'ThisIsTest',
    'This[]Is[]Test': 'This[]Is[]Test',
    'This [] is test with 123 45 numbers': 'This[]IsTestWith12345Numbers',
  }).forEach((input, expected) {
    test(
      'Option Test [includesSymbols = true]: Check if pascalCaseFormatter works: $input',
      () {
        expect(Formatter.pascalCase(input, includesSymbols: true), expected);
      },
    );
  });
}

import 'package:formatter/currency.dart';
import 'package:formatter/flutter_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void currencyTest() {
  final fr = Formatter();
  test('Check if currency formatter works (basic)', () {
    double n = 120;

    expect(fr.currency(n), '120.00');
    expect(fr.currency(n, locale: Locale.ca), '120.00');
    expect(fr.currency(n, locale: Locale.ja), '120');
  });

  test('Check if currency formatter works with digits settings', () {
    double n = 120;

    expect(
      fr.currency(n, minIntegerDigits: 8),
      '00,000,120.00',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, locale: Locale.ca),
      '00,000,120.00',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, locale: Locale.ja),
      '0000,0120',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, fractionDigits: 1),
      '00,000,120.0',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, fractionDigits: 1, locale: Locale.ca),
      '00,000,120.0',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, fractionDigits: 1, locale: Locale.ja),
      '0000,0120.0',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, fractionDigits: 0),
      '00,000,120',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, fractionDigits: 0, locale: Locale.ca),
      '00,000,120',
    );
    expect(
      fr.currency(n, minIntegerDigits: 8, fractionDigits: 0, locale: Locale.ja),
      '0000,0120',
    );
  });

  test('Check if currency formatter works with prefix', () {
    double n = 120;

    expect(fr.currency(n, showPrefix: true), '\$120.00');
    expect(fr.currency(n, showPrefix: true, locale: Locale.ca), '\$120.00');
    expect(fr.currency(n, showPrefix: true, locale: Locale.ja), '¥120');

    expect(
      fr.currency(
        n,
        showPrefix: true,
        prefixType: CurrencyPrefix.code,
      ),
      'USD120.00',
    );
    expect(
      fr.currency(
        n,
        showPrefix: true,
        prefixType: CurrencyPrefix.code,
        locale: Locale.ca,
      ),
      'CAD120.00',
    );
    expect(
      fr.currency(
        n,
        showPrefix: true,
        prefixType: CurrencyPrefix.code,
        locale: Locale.ja,
      ),
      'JPY120',
    );

    expect(
      fr.currency(
        n,
        showPrefix: true,
        prefixType: CurrencyPrefix.codeAndSign,
      ),
      'US\$120.00',
    );
    expect(
      fr.currency(
        n,
        showPrefix: true,
        prefixType: CurrencyPrefix.codeAndSign,
        locale: Locale.ca,
      ),
      'CA\$120.00',
    );
    expect(
      fr.currency(
        n,
        showPrefix: true,
        prefixType: CurrencyPrefix.codeAndSign,
        locale: Locale.ja,
      ),
      'JP¥120',
    );
  });
}

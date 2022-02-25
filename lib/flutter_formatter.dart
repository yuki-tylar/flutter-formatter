library flutter_formatter;

import 'currency.dart';
import 'sentence_case.dart';
import 'title_case.dart';

class Formatter {
  static const currency = currencyFormatter;
  static const sentenceCase = sentenceCaseFormatter;
  static const titleCase = titleCaseFormatter;

  Formatter._();
}

/// format string to PascalCase
/// ### example:
/// * this is test => ThisIsTest
/// * this_is_test => ThisIsTest
/// * this-is-test => ThisIsTest
/// ### @args
/// * str: string?
/// * includesSymbols: bool [Default: false]
String pascalCaseFormatter(
  String? str, {
  bool includesSymbols = false,
}) {
  str ??= '';

  str = str.replaceAllMapped(
    RegExp(r'\w+\b'),
    (match) =>
        '${match[0]![0].toUpperCase()}${match[0]!.substring(1).toLowerCase()}',
  );

  if (!includesSymbols) {
    str = str.replaceAll(RegExp(r'[^\s\w\d]'), '');
  }

  return str.replaceAll(RegExp(r'\s'), '');
}

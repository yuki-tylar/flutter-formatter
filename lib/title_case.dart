/// format string to titleCase
/// ### example:
/// * this is test => This Is Test
/// * this_is_test => This Is Test
/// * this-is-test => This Is Test
String titleCaseFormatter(String? str) {
  str ??= '';
  return str
      .trim()
      .replaceAllMapped(
        RegExp(
            r'[A-Z]{2,}(?=[A-Z][a-z]+[0-9]*|\b)|[A-Z]?[a-z]+[0-9]*|[A-Z]|[0-9]+'),
        (Match m) =>
            "${m[0]![0].toUpperCase()}${m[0]!.substring(1).toLowerCase()}",
      )
      .replaceAll(RegExp(r'(_|-)+'), ' ');
}

/// Format given string to sentenseCase
///
/// It converts first charactor of given string to **UpperCase**
/// ### example
/// * this is test => This is test
/// ### @args
/// * str: string

String sentenceCaseFormatter(String? str) {
  str ??= '';
  str = str.trim().replaceAllMapped(RegExp(r'(\s*)([^.]+\.*)'), (Match match) {
    String spacesPre = match[1] ?? '';
    String body = match[2] ?? '';

    String result = spacesPre;

    if (body.isNotEmpty) {
      result += body[0].toUpperCase();

      if (body.length > 1) {
        result += body.substring(1);
      }
    }

    return result;
  });

  return str;
}

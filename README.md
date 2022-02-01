<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

## Features

Useful formatter for Dart.
* strings to titleCase
* strings to sentenceCase (first letter in each paragraph will be uppercase.)
* double to currency format with / without prefix (USD / US$ / $ / CAD / etc...)
## Getting started

Copy following files into your project.
```
/lib/flutter_formatter.dart
/lib/title_case.dart
/lib/sentence_case.dart
/lib/currency.dart
```

## Usage

```dart
const formatter = Formatter();

formatter.titleCase('this is title') 
// --> This Is Title

formatter.sentenceCase('this is sentence. another PARAGRAPH is here.') 
// --> This is sentence. Another PARAGRAPH is here

formatter.currency(120.78, minIntegerDigits: 6, fractionDigits: 1, locale: Locale.ca, showPrefix: true, prefixType: CurrencyPrefix.code)
// --> CAD120.7
```
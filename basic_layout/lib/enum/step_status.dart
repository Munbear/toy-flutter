import 'package:flutter/material.dart';

enum Status { first, seconde, tertiary }

extension StepLevelExtension on Status {
  String get convertedKorText {
    switch (this) {
      case Status.first:
        return 'ㄱ';
      case Status.seconde:
        return 'ㄴ';
      case Status.tertiary:
        return 'ㄷ';
      default:
        return '';
    }
  }

  Color get selectColor {
    switch (this) {
      case Status.first:
        return Color(0xff06CE74);
      case Status.seconde:
        return Color(0xff007FF5);
      case Status.tertiary:
        return Color(0xff8327FF);
    }
  }
}

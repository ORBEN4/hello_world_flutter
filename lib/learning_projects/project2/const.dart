import 'dart:math';

import 'package:flutter/cupertino.dart';

class Margin {
  static const double LEFT = 10;
  static const double TOP = 20;
  static const double RIGHT = 30;
  static const double BOTTOM = 40;
}

class Headline {
  static const String TEXT = "Flight";
}

abstract class Font {
  late String fontFamily;
  late List allFonts;

  FontWeight getRandomFont() {
    int fontIndex = randomFontIndex(this.allFonts.length);
    return this.allFonts[fontIndex];
  }

  int randomFontIndex(int amountOfFontsInFamily) {
    return Random().nextInt(amountOfFontsInFamily);
  }
}

class FontAssistant extends Font {
  final String fontFamily = "Assistant";
  final List allFonts = [
    FontWeight.w200,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600,
    FontWeight.w700,
    FontWeight.w800,
    FontWeight.w900,
  ];

// @override
// FontWeight getRandomFont() {
//   int fontIndex = super.randomFontIndex(allFonts.length);
//   return allFonts[fontIndex];
// }
}

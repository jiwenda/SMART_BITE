import 'package:flutter/material.dart';

class API {
  static String apiKey = "AIzaSyBjOGQFhEJxLJSpznjU4R_dsVnLuzOxAKo";
}

class Tcolour {
  static Color get navBG => Color(0xffFBA518);
  static Color get containerHolderBg => Color(0xffB2C9AD);
  static Color get primaryBg => Color(0xffFA812F);
  static Color grey = Color(0xffDBDBDB);
  static Color grey1 = Color(0xffF2EFE7);
  static Color white = Colors.white;
  static Color get black => Colors.black;
}

class TTextStyle {
  static TextStyle heading1 =
      TextStyle(color: Tcolour.black, fontWeight: FontWeight.bold);
  static TextStyle heading2 =
      TextStyle(color: Tcolour.grey, fontWeight: FontWeight.bold);
  static TextStyle heading3 =
      TextStyle(color: Tcolour.white, fontWeight: FontWeight.bold);
}

class Timages {
  static Image food1 = Image.asset("assets/img/food_sample.png");
}

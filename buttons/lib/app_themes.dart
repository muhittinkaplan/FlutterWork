import 'package:flutter/material.dart';

class AppSystemTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(color: Colors.teal),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 14.0, fontFamily: 'Hind', fontWeight: FontWeight.bold, color: Colors.tealAccent),
      headline2: TextStyle(fontSize: 20.0, fontFamily: 'Hind', fontWeight: FontWeight.bold, color: Colors.tealAccent),
      bodyText2: TextStyle(fontSize: 10.0, fontFamily: 'Hind', color: Colors.tealAccent),
      bodyText1: TextStyle(fontSize: 12.0, fontFamily: 'Hind', color: Colors.tealAccent),
      subtitle1: TextStyle(fontSize: 8.0, fontFamily: 'Hind', color: Colors.tealAccent),
      subtitle2: TextStyle(fontSize: 6.0, fontFamily: 'Hind', color: Colors.tealAccent),
    ),
    cardTheme: CardTheme(
      elevation: 10,
      shadowColor: Colors.tealAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.teal),
      ),
    ),
    iconTheme: IconThemeData(size: 32, color: Colors.teal.shade100),
  );
  static ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(color: Colors.blue),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 14.0, fontFamily: 'Hind', fontWeight: FontWeight.bold, color: Colors.blueAccent),
      headline2: TextStyle(fontSize: 20.0, fontFamily: 'Hind', fontWeight: FontWeight.bold, color: Colors.blueAccent),
      bodyText2: TextStyle(fontSize: 10.0, fontFamily: 'Hind', color: Colors.blueAccent),
      bodyText1: TextStyle(fontSize: 12.0, fontFamily: 'Hind', color: Colors.blueAccent),
      subtitle1: TextStyle(fontSize: 8.0, fontFamily: 'Hind', color: Colors.blueAccent),
      subtitle2: TextStyle(fontSize: 6.0, fontFamily: 'Hind', color: Colors.blueAccent),
    ),
    cardTheme: CardTheme(
      elevation: 10,
      color: Colors.blue.shade50,
      shadowColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.blue),
      ),
    ),
    iconTheme: IconThemeData(size: 32.0, color: Colors.blue.shade900),
  );
}

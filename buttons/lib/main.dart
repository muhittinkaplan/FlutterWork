import 'package:buttons/icon_button.dart';
import 'package:buttons/outline_button.dart';
import 'package:buttons/text_button.dart';
import 'package:flutter/material.dart';
import 'app_themes.dart';
import 'elevated_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppSystemTheme.darkTheme,
        home: MyTextButton(
          func: func,
        ));
  }

  //fonksiyonu MyTextButton sınıfı içerisindeki Butona parametre geçiyoruz.
  void func() {
    print("MyApp Class dan gelen fonksiyon");
  }
}

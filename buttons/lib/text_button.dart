import 'package:buttons/app_themes.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatefulWidget {
  final func;
  const MyTextButton({Key? key, required this.func}) : super(key: key);

  @override
  State<MyTextButton> createState() => _MyTextButtonState();
}

class _MyTextButtonState extends State<MyTextButton> {
  get _func => widget.func;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Button"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextButton(child: Text("Text Button"), onPressed: _func),
              TextButton.icon(icon: Icon(Icons.accessibility_rounded), label: Text("Text İcon Button"), onPressed: () => print("Normal text icon Button Press"))
            ],
          ),
        ),
      ),
    );
  }
}

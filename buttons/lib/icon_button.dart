import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  const MyIconButton({Key? key}) : super(key: key);

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IconButton"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              IconButton(icon: Icon(Icons.access_alarm_sharp), onPressed: () => print("Buton Pressed")),
            ],
          ),
        ),
      ),
    );
  }
}

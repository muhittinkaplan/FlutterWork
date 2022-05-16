import 'package:flutter/material.dart';

class MyOutlineButton extends StatefulWidget {
  final func;
  const MyOutlineButton({Key? key, required this.func}) : super(key: key);

  @override
  State<MyOutlineButton> createState() => _MyOutlineButtonState();
}

class _MyOutlineButtonState extends State<MyOutlineButton> {
  get _func => widget.func;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Outline Button"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              OutlinedButton(onPressed: () => _func, child: Text("Outline Button")),
              OutlinedButton.icon(
                  onPressed: () => print("Outline Icon "
                      "Buttoon"),
                  icon: Icon(Icons.accessibility),
                  label: Text("OutlineIconButton")),
            ],
          ),
        ),
      ),
    );
  }
}

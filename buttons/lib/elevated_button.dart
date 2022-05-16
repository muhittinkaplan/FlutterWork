import 'package:flutter/material.dart';

class MyElevatedButton extends StatefulWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  State<MyElevatedButton> createState() => _MyElevatedButtonState();
}

class _MyElevatedButtonState extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ElevatedButton"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(child: Text("ElevatedButton"), onPressed: () => print("Normal Elevated Buton Pressed")),
              ElevatedButton.icon(onPressed: () => print("Elevated Icon Buton Pressed"), icon: Icon(Icons.access_time), label: Text("ElevatedIconButton"))
            ],
          ),
        ),
      ),
    );
  }
}

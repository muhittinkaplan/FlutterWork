import 'package:clippy_flutter/arrow.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  var donus = 0.0;
  var genislik = 0.0;

  bool iconAnimationStatus = false;
  bool fadeAnimationStatus = false;

  void fadeAnimation() {
    setState(() {
      fadeAnimationStatus = !fadeAnimationStatus;
    });
  }

  void iconAnimation() {
    setState(() {
      iconAnimationStatus ? _controller.forward() : _controller.reverse();
      iconAnimationStatus = !iconAnimationStatus;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1000)); //this hatasında with SingleTickerProviderStateMixin ekle
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () => setState(() {
                          donus = donus + 0.5;
                        }),
                    child: Text("Dondur")),
                Center(
                  child: AnimatedRotation(
                    filterQuality: FilterQuality.high,
                    onEnd: () => print("Bitti"),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.red),
                      ),
                    ),
                    turns: donus,
                    duration: Duration(milliseconds: 1000),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => setState(() {
                          genislik = genislik + 0.1;
                        }),
                    child: Text("Genişlik")),
                AnimatedScale(
                  child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Arrow(
                        child: Container(
                          width: 50.0,
                          height: 70.0,
                          color: Colors.pink,
                          child: const Center(
                            child: Icon(
                              Icons.directions_bike,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        rectangleClipHeight: 10,
                        triangleHeight: 80,
                      )),
                  scale: genislik,
                  duration: Duration(milliseconds: 1000),
                ),
                ElevatedButton(onPressed: () => iconAnimation(), child: Text("Icon")),
                AnimatedIcon(
                  size: 32,
                  icon: AnimatedIcons.play_pause,
                  progress: _controller,
                ),
                ElevatedButton(onPressed: () => fadeAnimation(), child: Text("Fade")),
                AnimatedCrossFade(
                    firstChild: SizedBox(
                      width: 200,
                      height: 100,
                      child: Container(
                        color: Colors.red,
                        child: Center(child: Text("First")),
                      ),
                    ),
                    secondChild: SizedBox(
                      width: 200,
                      height: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.teal,
                        ),
                        child: Center(child: Text("Second")),
                      ),
                    ),
                    crossFadeState: fadeAnimationStatus ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                    duration: Duration(seconds: 5)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

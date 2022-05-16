import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_controllers.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyGetXControllers c = Get.put(MyGetXControllers());
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Page"),
      ),
      body: Center(
        child: Column(
          children: [ElevatedButton(onPressed: () => c.count++, child: Text("+"))],
        ),
      ),
    );
  }
}

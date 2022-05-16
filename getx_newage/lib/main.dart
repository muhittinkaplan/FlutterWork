import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_newage/getx_controllers.dart';
import 'package:getx_newage/other_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyGetXControllers c = Get.put(MyGetXControllers());

    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () => Get.changeTheme(ThemeData.dark()), child: Text("DarkMode")),
                Obx(() => Text("CountVal ${c.count.value}")),
                ElevatedButton(
                  onPressed: () => c.count++,
                  child: Text("+"),
                ),
                ElevatedButton(onPressed: () => Get.to(OtherPage()), child: Text("Open Other Page >")),
                ElevatedButton(
                  onPressed: () => Get.snackbar("Title", "Message", backgroundColor: Colors.lightGreen),
                  child: Text("SnackBar"),
                ),
                ElevatedButton(onPressed: () => Get.defaultDialog(title: "Alert"), child: Text("OpenDialog")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

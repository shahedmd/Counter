import 'package:flutter/material.dart';
import 'package:flutter_application_1/controler.dart';
import 'package:flutter_application_1/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Controller cartController = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Shahed.com"),
        ),
        body: Column(
          children: [
            IteamCart(title: "Product", price: 50),
            IteamCart(title: "Product", price: 50),
            ElevatedButton(
                onPressed: () {},
                child: Obx(
                  () => Text(
                    "Total Payment :" + cartController.total.value.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

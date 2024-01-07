import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code Red Clan"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              GetX<HomeController>(
                builder: (controller) => Text(
                  controller.x.toString(),
                  style: TextStyle(fontSize: 40),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  homeController.changeValue();
                },
                child: const Text("Plus One"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

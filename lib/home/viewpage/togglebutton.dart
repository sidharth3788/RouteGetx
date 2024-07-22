import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toggle_button/core/controller/controller.dart';
import 'package:toggle_button/home/viewpage/page2.dart';

class ToggleButtonPage extends StatelessWidget {
  final tbController = Get.put(ToggleButtonController());

  ToggleButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => CupertinoSwitch(
                    value: tbController.switchState.value,
                    onChanged: (value) {
                      tbController.switchState.value = value;
                    },
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (tbController.switchState.value) {
                    Get.to(() => const Page2());
                  }
                },
                child: const Text(
                  'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

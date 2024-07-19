import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toggle_button/home/viewpage/page2.dart';

class ToggleButtonPage extends StatefulWidget {
  const ToggleButtonPage({super.key});

  @override
  State<ToggleButtonPage> createState() => _ToggleButtonPageState();
}

class _ToggleButtonPageState extends State<ToggleButtonPage> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoSwitch(
                value: _isOn,
                onChanged: (value) {
                  setState(() {
                    _isOn = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(const Page2());
                },
                child: const Text('Goto Next Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

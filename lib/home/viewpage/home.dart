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
  bool _switchState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoSwitch(
                value: _switchState,
                onChanged: (value) {
                  setState(() {
                    _switchState = value;
                    // print('Switch state: $_switchState');
                  });
                },
              ),
              // RichText(
              //   text: TextSpan(
              //       text: 'Button state is ',
              //       style: TextStyle(
              //         color: Colors.grey[600],
              //         fontWeight: FontWeight.bold,
              //       ),
              //       children: <TextSpan>[
              //         TextSpan(
              //           text: _switchState.toString(),
              //           style: const TextStyle(
              //             color: Color(0xFF041444),
              //             fontWeight: FontWeight.bold,
              //           ),
              //         )
              //       ]),
              // ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_switchState == true) {
                    Get.to(const Page2());
                  }
                  // else
                  // {
                  // print('Button is OFF');
                  // }
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(color: Color(0xFF041444)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Connect Instagram"),
        Switch(
          value: isOn,
          onChanged: (bool? val) {
            if (val != null) {
              setState(() {
                isOn = val;
                print("Switch: $isOn");
              });
            }
          },
        ),
      ],
    );
  }
}

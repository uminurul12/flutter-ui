import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              if (value != null) {
                isChecked = value;
                print("setuju: $isChecked");
              }
            });
          },
        ),
        const SizedBox(width: 4),
        const Text(
          "Setuju syarat dan ketentuan.",
          style: TextStyle(decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}

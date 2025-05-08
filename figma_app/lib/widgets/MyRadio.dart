import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String sex = "pria";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Jenis Kelamin: "),
        const SizedBox(width: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 'pria',
              groupValue: sex,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    sex = value;
                    print("sex: $sex");
                  }
                });
              },
            ),
            const Text("Pria"),
          ],
        ),
        const SizedBox(width: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: "wanita",
              groupValue: sex,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    sex = value;
                    print("sex: $sex");
                  }
                });
              },
            ),
            const Text("Wanita"),
          ],
        ),
      ],
    );
  }
}

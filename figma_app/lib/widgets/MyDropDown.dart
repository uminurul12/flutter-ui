import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String selected = "Dart";

  final List<String> dropDownList = const [
    "Dart",
    "Kotlin",
    "Java",
    "Javascript",
    "PHP",
    "Python",
    "Ruby",
    "Swift",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Bahasa favorit: "),
        const SizedBox(width: 8),
        DropdownButton(
          value: selected,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 20,
          style: TextStyle(color: Colors.blue[600]),
          underline: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 3,
                ),
              ),
            ),
          ),
          items: dropDownList.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (val) {
            setState(() {
              if (val != null) selected = val;
              print(selected);
            });
          },
        ),
      ],
    );
  }
}

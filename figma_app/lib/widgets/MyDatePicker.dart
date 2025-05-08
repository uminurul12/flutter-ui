import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1950),
          lastDate: DateTime(2100),
        );
        setState(() {
          if (pickedDate != null) {
            dateController.text = pickedDate.toString();
          }
        });
        debugPrint("Date Picker: $pickedDate");
      },
      child: TextFormField(
        initialValue: "2023-12-11",
        maxLength: 20,
        enabled: false,
        decoration: const InputDecoration(
          labelText: "Tanggal Lahir",
          labelStyle: TextStyle(color: Colors.blueGrey),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          suffixIcon: Icon(Icons.date_range),
          helperText: "Pilih tanggal lahir anda",
        ),
        onChanged: (value) {},
      ),
    );
  }
}

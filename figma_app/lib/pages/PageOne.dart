import 'package:flutter/material.dart';
import "package:flutter_ui/pages/PageSilverAppBar.dart";
import "package:flutter_ui/pages/pageTabBar.dart";
import "package:flutter_ui/widgets/MyBottomSheet.dart";
import "package:flutter_ui/widgets/MyCheckBox.dart";
import "package:flutter_ui/widgets/MyDatePicker.dart";
import "package:flutter_ui/widgets/MyDialog.dart";
import "package:flutter_ui/widgets/MyDropDown.dart";
import "package:flutter_ui/widgets/MyRadio.dart";
import "package:flutter_ui/widgets/MySwitch.dart";
import "package:flutter_ui/widgets/TextField.dart";

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MyTextField(),
          MyDropDown(),
          MySwitch(),
          MyRadio(),
          MyCheckbox(),
          MyDatePicker(),
          MyDialog(),
          SizedBox(
            height: 20,
          ),
          MyBottomSheet(),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.blue,
                  content: Text('Your request is succesful'),
                ),
              );
            },
            child: const Text('Open SnackBar'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyTabBar()));
            },
            child: const Text('Open Tab bar'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const MySilverAppBar()));
            },
            child: const Text('Open Silver App bar'),
          ),
        ],
      ),
    );
  }
}

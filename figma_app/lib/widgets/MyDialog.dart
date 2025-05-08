import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Info'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text('Your order was placed.'),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: const Text('Open Dialog'),
    );
  }
}

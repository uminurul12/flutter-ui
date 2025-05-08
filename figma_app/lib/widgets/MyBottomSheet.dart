import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Your order was placed!'),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Text('Open BottomSheet'),
    );
  }
}

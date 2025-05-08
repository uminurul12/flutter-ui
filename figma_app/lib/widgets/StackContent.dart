import 'package:flutter/material.dart';

class StackContent extends StatelessWidget {
  const StackContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(
            Icons.shopping_cart,
            size: 50,
          ),
          Positioned(
            top: -4,
            right: -4,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                "1",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

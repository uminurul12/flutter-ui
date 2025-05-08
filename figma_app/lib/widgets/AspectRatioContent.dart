import 'package:flutter/material.dart';

class AspectRatioContent extends StatelessWidget {
  const AspectRatioContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 180 / 240,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    super.key,
    required this.colors,
  });

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            Row(
              children: [
                ...List.generate(
                  colors.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: colors[index],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

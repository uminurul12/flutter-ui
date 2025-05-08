import 'package:flutter/material.dart';

class ContainerContent extends StatelessWidget {
  const ContainerContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 15.0,
                offset: Offset.zero,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: [
              Text(
                "Discover the most modern furniture",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              shadowColor: Colors.grey[20],
              elevation: 5.0,
            ),
            child: Text(
              "Add To Cart".toUpperCase(),
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.blue[200],
          padding: const EdgeInsets.all(20),
          child: const Row(
            children: [
              Icon(
                Icons.home,
                size: 32,
              ),
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 36,
              ),
            ],
          ),
        ),
        Stack(
          children: [
            Positioned(
              left: 50.0,
              top: 1.0,
              child: Text("Lorem ipsum"),
            ),
            Text("Not positioned"),
          ],
        ),
      ],
    );
  }
}

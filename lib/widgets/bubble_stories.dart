import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String name;
  const BubbleStories({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          CircleAvatar(backgroundColor: Colors.grey, radius: 40),
          SizedBox(height: 12),
          Text(name),
        ],
      ),
    );
  }
}

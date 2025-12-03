import 'package:flutter/material.dart';

class SearchReels extends StatelessWidget {
  const SearchReels({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 30,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsGeometry.all(4),
          child: Container(height: 30, width: 30, color: Colors.blue.shade50),
        );
      },
    );
  }
}

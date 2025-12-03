import 'package:flutter/material.dart';

class AccountTab4 extends StatelessWidget {
  const AccountTab4({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 7,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsGeometry.all(4),
          child: Container(height: 30, width: 30, color: Colors.green.shade300),
        );
      },
    );
  }
}

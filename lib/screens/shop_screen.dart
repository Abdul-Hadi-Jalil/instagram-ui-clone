import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/shop_grid.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shop'),
                Row(
                  spacing: 8,
                  children: [Icon(Icons.calendar_today), Icon(Icons.menu)],
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.all(8),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300]?.withOpacity(0.7),
                borderRadius: BorderRadius.circular(9),
              ),

              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey[500]),
                  SizedBox(width: 4),
                  Text('Search', style: TextStyle(color: Colors.grey[500])),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ShopGrid(),
    );
  }
}

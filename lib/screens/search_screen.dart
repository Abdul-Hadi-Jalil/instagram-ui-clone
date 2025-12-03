import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/search_reels.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.all(8),
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
      ),
      body: SearchReels(),
    );
  }
}

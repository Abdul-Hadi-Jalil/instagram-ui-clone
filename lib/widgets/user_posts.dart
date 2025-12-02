import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String userName;
  const UserPosts({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          // user name and profile picture
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    CircleAvatar(backgroundColor: Colors.grey[300]),
                    Text(
                      userName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(Icons.menu),
              ],
            ),
          ),

          SizedBox(height: 20),

          // user post
          Container(color: Colors.grey[300], height: 400),

          const SizedBox(height: 4),

          // icons for like, share and bookmark
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.chat_bubble_outline),
                    Icon(Icons.share),
                  ],
                ),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),

          const SizedBox(height: 8),

          // comment section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Text('Liked by '),
                Text('Shey', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(' and '),
                Text('others', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          const SizedBox(height: 2),

          // caption
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "mind_of_deen_",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: " Dr Israr Ahmed "),
                  TextSpan(
                    text: "#drisrarahmed #islamiccontent #drisrarahmedsahb",
                    style: TextStyle(color: Colors.blue.shade700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

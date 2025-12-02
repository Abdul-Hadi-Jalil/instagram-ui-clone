import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/bubble_stories.dart';
import 'package:instagram_ui_clone/widgets/user_posts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> people = [
    "Abdul Hadi",
    "M.Ali",
    "Hanzla",
    "Arham",
    "Moiz",
    "Abdullah",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // User Profile Stories
            SizedBox(
              height: 108,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(name: people[index]);
                },
              ),
            ),

            SizedBox(height: 30),

            // User Posts
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(userName: people[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

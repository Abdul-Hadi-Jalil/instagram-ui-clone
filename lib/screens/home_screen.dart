import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/bubble_stories.dart';

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
      body: Column(
        children: [
          Container(
            height: 115,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(name: people[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

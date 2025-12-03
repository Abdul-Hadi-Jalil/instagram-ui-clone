import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/account_tab1.dart';
import 'package:instagram_ui_clone/widgets/account_tab2.dart';
import 'package:instagram_ui_clone/widgets/account_tab3.dart';
import 'package:instagram_ui_clone/widgets/account_tab4.dart';
import 'package:instagram_ui_clone/widgets/bubble_stories.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
          child: Column(
            children: [
              // top header of profile picture and post/followers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade500,
                  ),

                  Column(
                    children: [
                      Text(
                        '131',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text('posts'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '512',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text('followers'),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '621',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text('following'),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              // name and intorduction and link
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abdul Hadi Jalil',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Python and Flutter Developer'),
                    Text(
                      'https://github.com/Abdul-Hadi-Jalil',
                      style: TextStyle(color: Colors.blue.shade800),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22),

              // buttons
              Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: BoxBorder.all(color: Colors.grey.shade600),
                      ),
                      child: Center(child: Text('Edit Profile')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: BoxBorder.all(color: Colors.grey.shade600),
                      ),
                      child: Center(child: Text('Ad Tools')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: BoxBorder.all(color: Colors.grey.shade600),
                      ),
                      child: Center(child: Text('Insights')),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),

              // stories
              SizedBox(
                width: double.infinity,
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BubbleStories(name: 'story 1'),
                    BubbleStories(name: 'story 2'),
                    BubbleStories(name: 'story 3'),
                  ],
                ),
              ),

              TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.grid_3x3_outlined)),
                  Tab(icon: Icon(Icons.video_call)),
                  Tab(icon: Icon(Icons.shop)),
                  Tab(icon: Icon(Icons.person)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                    AccountTab3(),
                    AccountTab4(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

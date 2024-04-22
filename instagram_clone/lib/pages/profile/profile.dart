import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/custom_widgets/likes/highlight_widget.dart';
import 'package:instagram_clone/pages/custom_widgets/likes/post_widget.dart';
import 'package:instagram_clone/pages/custom_widgets/profile/profileimage_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1",
                      style: TextStyle(
                          color: Color.fromARGB(255, 214, 214, 214),
                          fontSize: 1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock,
                          size: 20,
                        ),
                        
                        Text(
                          "jacob_w",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(Icons.menu, size: 30),
                  ],
                ),
              ),
              ProfileIImage(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Highlight(
                      highlightName: "New",
                    ),
                    Highlight(
                      highlightName: "Sports",
                    ),
                    Highlight(
                      highlightName: "Nature",
                    ),
                    Highlight(
                      highlightName: "Friends",
                    ),
                    Highlight(
                      highlightName: "pictures",
                    ),
                    Highlight(
                      highlightName: "Colleage",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(),
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      CupertinoIcons.square_grid_4x3_fill,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.account_box_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                PostWidget(),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}


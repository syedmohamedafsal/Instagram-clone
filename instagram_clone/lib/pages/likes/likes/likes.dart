import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/custom_widgets/likes/follwers_widget.dart';
import 'package:instagram_clone/pages/custom_widgets/likes/recent_widget.dart';
// import 'package:instagram_clone/custom_widgets/likes/follwers.dart';
class Likes extends StatelessWidget {
  const Likes({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                TabBar(
                  tabs: [
                    Tab(text: "Follwing"),
                    Tab(
                      text: "You",
                    ),
                  ],
                ),
                PostLiked(),
                Divider(),
                Today(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PostLiked extends StatelessWidget {
  const PostLiked({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Follw Requests",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Today extends StatelessWidget {
  const Today({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Time(
          time: "New",
        ),
        RecentWidget(
          assetImage: AssetImage("image/profile/profile.png"),
          username: "Jacob_West ",
          liked: "Liked Your Post.  1h",
          likedimage: AssetImage("image/search/image1.jpg"),
        ),
        Divider(),
        Time(
          time: "Today",
        ),
        RecentWidget(
          assetImage: AssetImage("image/profile/profile1.png"),
          username: "kiero_d ",
          liked: " and 26 others liked your photo. 3h.",
          likedimage: AssetImage("image/search/image3.jpg"),
        ),
        Divider(),
        Time(
          time: "This Week",
        ),
        RecentWidget(
          assetImage: AssetImage("image/profile/profile2.png"),
          username: "craig_love ",
          liked: "mentioned you in a comment: @jacob_w exactly..",
          likedimage: AssetImage("image/search/image9.jpg"),
        ),
        RecentWidget(
          assetImage: AssetImage("image/profile/profile3.png"),
          username: "martini_rond ",
          liked: "started following you. 3d",
          likedimage: AssetImage("image/search/image1.jpg"),
        ),
        FollwersWidget(
          follwersprofile: AssetImage("image/profile/profile4.png"),
          follwersuserid: "martini_rond ",
          follwing: "started following you. 3d",
          followbtn: "message",
          bgcolr: Colors.transparent,
          txtclr: Colors.black,
        ),
        FollwersWidget(
          follwersprofile: AssetImage("image/profile/profile6.png"),
          follwersuserid: "zackjohn an ",
          follwing: "started following you. 3d",
          followbtn: "message",
          bgcolr: Colors.transparent,
          txtclr: Colors.black,
        ),
        Divider(),
         Time(
          time: "This Month",
        ),
        FollwersWidget(
          follwersprofile: AssetImage("image/profile/profile5.png"),
          follwersuserid: "mis_potter  ",
          follwing: "started following you. 1month",
          followbtn: "Follow",
          bgcolr: Colors.blue,
          txtclr: Colors.white,
        ),
      ],
    );
  }
}

class Time extends StatelessWidget {
  final String time;
  const Time({
    super.key,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          time,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}


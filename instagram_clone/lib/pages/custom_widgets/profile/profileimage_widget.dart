import 'package:flutter/material.dart';

class ProfileIImage extends StatelessWidget {
  const ProfileIImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 35,
                child: Image(
                  image: AssetImage("image/profile/profile.png"),
                ),
              ),
              Column(
                children: [
                  Text(
                    "20",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("Post"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "835",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "162",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text("Following"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Jacob West",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Digital goodies designer @pixsellz ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Everything is designed.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}

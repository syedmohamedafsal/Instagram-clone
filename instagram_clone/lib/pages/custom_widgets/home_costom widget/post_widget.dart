import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Postwidget extends StatelessWidget {
  const Postwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.grey),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                "image/oval.png",
                height: 32,
                fit: BoxFit.fill,
              ),
            ),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 90,
                ),
                Row(
                  children: [
                    Text(
                      "joshua_l",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: 15,
                    )
                  ],
                ),
                Text(
                  "Tokyo, Japan",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        const Image(
          fit: BoxFit.cover,
          width: double.infinity,
          image: AssetImage("image/rectangle.png"),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SvgPicture.asset("image/like.svg"),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset("image/comment.svg"),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset("image/share.svg"),
              const SizedBox(
                width: 10,
              ),
              const Spacer(),
              SvgPicture.asset("image/save.svg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              const Image(
                image: AssetImage("image/oval.png"),
              ),
              const SizedBox(
                width: 10,
              ),
              RichText(
                text: const TextSpan(
                    text: "Liked By ",
                    style: TextStyle(
                      color: Colors.black,
                      wordSpacing: 2.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'craig_love and 44,686 others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            wordSpacing: 2.0),
                      ),
                    ]),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              SizedBox(
                width: 390,
                child: RichText(
                  text: const TextSpan(
                      text: "joshua_l ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2.0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              'The game in Japan was amazing and I want to share some photos',
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

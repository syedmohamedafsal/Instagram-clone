import 'package:flutter/material.dart';

class RecentWidget extends StatelessWidget {
  final AssetImage assetImage;
  final String username;
  final String liked;
  final AssetImage likedimage;
  const RecentWidget({
    super.key,
    required this.assetImage,
    required this.username,
    required this.liked,
    required this.likedimage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Image(
            image: assetImage,
            height: 50,
            width: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                text: username,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: liked,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Image(
            image: likedimage,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}


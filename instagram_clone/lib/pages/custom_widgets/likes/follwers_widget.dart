import 'package:flutter/material.dart';

class FollwersWidget extends StatelessWidget {
  final AssetImage follwersprofile;
  final String follwersuserid;
  final String follwing;
  final String followbtn;
  final Color bgcolr;
  final Color txtclr;
  const FollwersWidget({
    super.key,
    required this.follwersprofile,
    required this.follwing,
    required this.follwersuserid,
    required this.followbtn,
    required this.bgcolr,
    required this.txtclr,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Image(
            image: follwersprofile,
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
                text: follwersuserid,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: follwing,
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
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
              color: bgcolr,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                followbtn,
                style: TextStyle(
                  fontSize: 15,
                  color: txtclr,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

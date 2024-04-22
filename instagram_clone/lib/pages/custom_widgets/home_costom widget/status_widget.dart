import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key, required this.statusName});
  final String statusName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 25,
            child: Image(
              height: 100,
              width: 100,
              image: AssetImage("image/images.png"),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(statusName),
        ],
      ),
    );
  }
}

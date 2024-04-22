import 'package:flutter/cupertino.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,

      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3 , crossAxisSpacing: 5, mainAxisSpacing: 5),
      itemBuilder: (context, index) {
        return Image(
          fit: BoxFit.cover,
          image: AssetImage("image/search/image${index + 1}.jpg"),
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SafeArea(
            child: SvgPicture.asset(
          "image/search/search.svg",
          width: 380,
        )),
        Expanded(
          child: MasonryGridView.count(
            crossAxisCount: 2,
            itemCount: 9,
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("image/search/image${index + 1}.jpg"),
                )),
          ),
        ),
      ],
    ));
  }
}

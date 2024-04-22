import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Highlight extends StatelessWidget {
  
   const Highlight({
    super.key,
    required this.highlightName,
  });
  
    final String highlightName;
    
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: index == 0 
                    ? const Icon(
                        Icons.add,
                        color: Colors.green,
                        size: 48,
                      )
                    : const Image(
                        image: AssetImage('image/profile/profile.png'),
                        width: 100,
                        height: 100,
                      ),
              ),
            ),
            
          ],
        ),
        const SizedBox(
                height: 1,
              ),
            Text(highlightName),
      ],
    );
  }
}

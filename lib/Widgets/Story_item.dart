import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300]),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://picsum.photos/200",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}

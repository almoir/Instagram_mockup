import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
          ),
        ),
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/200"),
                  fit: BoxFit.cover),
              border: Border.all(
                width: 5,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(60),
              color: Colors.grey[300]),
        ),
      ],
    );
  }
}

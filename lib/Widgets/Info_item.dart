import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  const InfoItem(this.title, this.value, {Key? key}) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(title),
      ],
    );
  }
}

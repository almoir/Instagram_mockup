import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  const TabItem({Key? key, required this.active, required this.icon})
      : super(key: key);

  final bool active;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white,
            ),
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}

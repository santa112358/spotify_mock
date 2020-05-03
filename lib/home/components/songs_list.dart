import 'package:flutter/material.dart';

class SongsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Container(
          margin: EdgeInsets.only(left: 16),
          color: Colors.yellow,
          width: 132,
          height: 132,
        ),
      ),
    );
  }
}

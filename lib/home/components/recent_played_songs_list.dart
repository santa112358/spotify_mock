import 'package:flutter/material.dart';

class RecentPlayedSongsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Container(
          margin: EdgeInsets.only(left: 16),
          color: Colors.blueAccent,
          width: 120,
          height: 120,
        ),
      ),
    );
  }
}

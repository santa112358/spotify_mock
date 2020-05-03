import 'package:flutter/material.dart';

class RecentPlayedSongsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 16),
              color: Colors.blueAccent,
              width: 120,
              height: 120,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Today's Top Hits",
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:spotify_mock/dummy_data.dart';

class RecentPlayedSongsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _songImages = List.from(songImages)..shuffle();
    final _songNames = List.from(songNames)..shuffle();
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Container(
          width: 120,
          margin: EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                _songImages[i],
                scale: 2,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                _songNames[i],
                style: Theme.of(context).textTheme.display1,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}

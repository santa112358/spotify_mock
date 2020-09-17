import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_mock/dummy_data.dart';

/// Shows list of songs
class SongsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _songImages = List.from(songImages)..shuffle();
    final _playListNames = List.from(playListNames)..shuffle();
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Container(
          margin: EdgeInsets.only(left: 16),
          width: 132,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                _songImages[i],
                scale: 2,
                width: 132,
                height: 132,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                _playListNames[i],
                style: Theme.of(context).textTheme.headline2,
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

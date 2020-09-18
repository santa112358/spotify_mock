import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_mock/dummy_data.dart';
import 'package:spotify_mock/home/components/constants.dart';
import 'package:spotify_mock/song_page/song_page.dart';

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
          width: songImageSize,
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                builder: (context) {
                  return SongPage();
                },
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  _songImages[i],
                  scale: 2,
                  width: songImageSize,
                  height: songImageSize,
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
      ),
    );
  }
}

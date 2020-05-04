import 'package:flutter/material.dart';
import 'package:spotify_mock/home/components/list_title.dart';
import 'package:spotify_mock/home/components/recent_played_songs_list.dart';
import 'package:spotify_mock/home/components/songs_list.dart';
import 'package:spotify_mock/home/components/summary.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 28),
        child: Stack(
          children: <Widget>[
            const _Shadow(),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTitle("こんばんは"),
                  Summary(),
                  ListTitle("最近再生した曲"),
                  RecentPlayedSongsList(),
                  ListTitle("Feel good music!"),
                  SongsList(),
                  ListTitle("人気のプレイリスト"),
                  SongsList(),
                  ListTitle("あなただけの音楽"),
                  SongsList(),
                  ListTitle("チャート"),
                  SongsList(),
                  ListTitle("最先端のダンスミュージック"),
                  SongsList(),
                  ListTitle("Always fresh and hand-curated"),
                  SongsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Shadow extends StatelessWidget {
  const _Shadow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: MediaQuery.of(context).size.width * 3 / 4,
          height: MediaQuery.of(context).size.width * 3 / 4,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                Colors.indigoAccent.withAlpha(80),
                Colors.black,
                Colors.black,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

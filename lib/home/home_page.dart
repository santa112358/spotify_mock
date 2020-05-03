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
        padding: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
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
      ),
    );
  }
}

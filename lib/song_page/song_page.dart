import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';

class SongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _songImages = List.from(songImages)
      ..shuffle();
    final _playListNames = List.from(playListNames)
      ..shuffle();
    return Container(
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20)
          .copyWith(bottom: 0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Icon(Icons.keyboard_arrow_down),
                    onTap: () {},
                  ),
                  Text(
                    "Play List Name",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                ],
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 32),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    _songImages[0],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Song Name",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Artist Name",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.shuffle,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  Icon(
                    Icons.skip_previous,
                    size: 52,
                  ),
                  Icon(
                    Icons.play_circle_filled,
                    size: 72,
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 52,
                  ),
                  Icon(
                    Icons.loop,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

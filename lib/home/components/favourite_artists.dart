import 'package:flutter/material.dart';
import 'package:spotify_mock/home/components/constants.dart';

import '../../dummy_data.dart';

class FavouriteArtists extends StatelessWidget {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: songImageSize,
                height: songImageSize,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(_songImages[i]),
                      scale: 2,
                      fit: BoxFit.cover,
                    )),
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

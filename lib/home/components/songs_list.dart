import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => Container(
          margin: EdgeInsets.only(left: 16),
          width: 132,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.yellow,
                width: 132,
                height: 132,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Camila Cabello, Bad Bunny, Drake, Selena Gomez",
                style: Theme.of(context).textTheme.display3,
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

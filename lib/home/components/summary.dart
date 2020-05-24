import 'package:flutter/material.dart';
import 'package:spotify_mock/dummy_data.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _songImages = List.from(songImages)..shuffle();
    final _songNames = List.from(songNames)..shuffle();
    final gridViewHeight = (MediaQuery.of(context).size.width) / 2 - 14;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      height: gridViewHeight,
      child: GridView.builder(
        padding: EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3),
        itemCount: 6,
        itemBuilder: (context, i) =>
            _SummaryItem(_songNames[i], _songImages[i]),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  final String title;
  final String imagePath;
  _SummaryItem(this.title, this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Colors.white.withAlpha(30),
      ),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 4),
              child: Text(
                title,
                style: Theme.of(context).textTheme.display2,
              ),
            ),
          )
        ],
      ),
    );
  }
}

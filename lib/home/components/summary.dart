import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        itemBuilder: (context, i) => _SummaryItem(),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      color: Colors.red,
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              color: Colors.amber,
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 4),
              child: Text(
                "Next Up",
                style: Theme.of(context).textTheme.display2,
              ),
            ),
          )
        ],
      ),
    );
  }
}

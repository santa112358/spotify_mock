import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final String title;

  ListTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}

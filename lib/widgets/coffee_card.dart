import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.title, required this.description});
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        ListTile(
          title: Text(title),
          subtitle: Text(description),
          leading: const Icon(Icons.coffee_maker),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
            TextButton(onPressed: () {}, child: const Text("View")),
          ],
        )
      ],
    ));
  }
}

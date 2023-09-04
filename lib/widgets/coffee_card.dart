import 'package:flutter/material.dart';
import 'package:kofe/screens/view_recipe_screen.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.title, required this.description});
  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(4),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(title),
              subtitle: Text(description),
              leading: const Icon(Icons.coffee_maker),
            ),
            Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline)),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ViewRecipeScreen(
                                        uid: "test",
                                      )));
                        },
                        child: const Text("View")),
                  ],
                ))
          ],
        ));
  }
}

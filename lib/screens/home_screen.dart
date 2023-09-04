import 'package:flutter/material.dart';
import 'package:kofe/widgets/coffee_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  int _selectedIndex = 1;

  void _onItemTapped(int idx) {
    setState(() => _selectedIndex = idx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kofe"), actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      ]),
      body: [
        ListView(
          children: const <RecipeCard>[
            RecipeCard(
              description: "V60 recipe",
              title: "V60",
            ),
            RecipeCard(
              description: "V60 recipe",
              title: "V60",
            ),
            RecipeCard(
              description: "V60 recipe",
              title: "V60",
            ),
            RecipeCard(
              description: "V60 recipe",
              title: "V60",
            ),
            RecipeCard(
              description: "V60 recipe",
              title: "V60",
            ),
          ],
        ),
        const Text("Favorite"),
        const Text("Profile")
      ][_selectedIndex],
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

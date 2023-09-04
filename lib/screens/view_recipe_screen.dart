import 'package:flutter/material.dart';

class ViewRecipeScreen extends StatefulWidget {
  final String uid;
  const ViewRecipeScreen({super.key, required this.uid});
  @override
  State<StatefulWidget> createState() => _ViewRecipeScreenState();
}

class _ViewRecipeScreenState extends State<ViewRecipeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Kofe")),
        body: ListView(children: const <Widget>[
          Card(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(children: [
                            Text(
                              "22 G",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text("Coffee",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.black54))
                          ]),
                          Column(children: [
                            Text(
                              "320 ml",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text("water",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.black54))
                          ]),
                          Column(children: [
                            Text(
                              "Medium Fine",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text("Grind",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: Colors.black54))
                          ]),
                        ])
                  ]))),
          Card(
              child: Column(children: <Widget>[
            Center(
                child: Text(
              "4 Steps - 2:50 Mins",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black54),
            )),
            ListTile(
              title: Text("Test"),
              subtitle: Text("V60 recipe"),
              leading: Icon(Icons.coffee_maker),
            ),
            ListTile(
              title: Text("Test"),
              subtitle: Text("V60 recipe"),
              leading: Icon(Icons.coffee_maker),
            ),
            ListTile(
              title: Text("Test"),
              subtitle: Text("V60 recipe"),
              leading: Icon(Icons.coffee_maker),
            ),
            ListTile(
              title: Text("Test"),
              subtitle: Text("V60 recipe"),
              leading: Icon(Icons.coffee_maker),
            ),
          ]))
        ]));
  }
}

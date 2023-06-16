import 'package:flutter/material.dart';
import 'package:login/screens/exercise_screeen.dart';
import 'package:login/screens/list_screen.dart';

class ScrollDrawer extends StatelessWidget {
  const ScrollDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Icon(
            Icons.emoji_people_rounded,
            size: 50,
          ),
        ),
        Expanded(
          child: ListView(children: [
            ListTile(
              leading: Icon(Icons.add_home),
              title: const Text("Home"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListScreeen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.map_outlined),
              title: const Text("Dove siamo"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ExerciseScreeen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle_outlined),
              title: const Text("Chi siamo"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.connect_without_contact),
              title: const Text("Contatti"),
              onTap: () {},
            ),
          ]),
        ),
        const Spacer(),
        const Center(
          child: Text(
            "Una produzione Andrea Spa",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10, bottom: 30),
            child: Text(
              "v 1.0.0",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ),
      ]),
    );
  }
}

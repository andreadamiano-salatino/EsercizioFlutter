import 'package:flutter/material.dart';

class FixedDrawer extends StatelessWidget {
  const FixedDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Icon(
            Icons.emoji_people_rounded,
            size: 50,
          ),
        ),
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.add_home),
              title: const Text("Home"),
              onTap: () {},
            ),
          ],
        ),
        ListTile(
          leading: Icon(Icons.map_outlined),
          title: const Text("Dove siamo"),
          onTap: () {},
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
        Spacer(),
        Center(
            child: Text(
          "Una produzione Andrea Spa",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Center(
            child: Text(
              "v 1.0.0",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        )
      ]),
    );
  }
}

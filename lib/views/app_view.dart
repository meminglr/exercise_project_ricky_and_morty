import 'package:flutter/material.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.face_outlined),
            label: "Characters",
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_outline),
            label: "Favorites",
          ),
          NavigationDestination(
            icon: Icon(Icons.location_on_outlined),
            label: "Settings",
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_outlined),
            label: "Episodes",
          ),
        ],
      ),
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
      title: Text("Rick and Morty"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
      ],
    );
  }
}

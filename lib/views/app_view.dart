import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppView extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const AppView({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
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
            label: "Locations",
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

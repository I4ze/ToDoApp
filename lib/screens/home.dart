import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar.medium(
            expandedHeight: 125,
            pinned: true,
            title: const Text(
              "Notas",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.indigo,
            leading: IconButton(
              onPressed: () {
                print("Menu pressionado");
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 45,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 45,
                ),
                onPressed: () {
                  print("Conta Pressionado");
                },
              ),
            ],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          SliverMasonryGrid.count(
            childCount: 30,
            crossAxisCount: 2,
            itemBuilder: (_, i) => Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('$i'),
            ),
          ),
        ],
      ),
    );
  }
}

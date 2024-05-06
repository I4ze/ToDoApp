import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2,
              
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.indigo[100 * (index % 9 + 1)],
                  child: Text("Nota ${index + 1}"),
                );
              },
              childCount: 30,
            ),
          ),
        ],
      ),
    );
  }
}

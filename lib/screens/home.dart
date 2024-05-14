import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:to_do_app/Style/noteCardColors.dart';
import 'package:to_do_app/Widgets/note_card.dart';
import 'package:to_do_app/Widgets/account_options.dart';
import 'package:to_do_app/models/note.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Note> notes = [
      Note(
        "Nota 1",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        DateTime.now(),
        cor: NoteCardColors.greenCard,
      ),
      Note(
        "Nota 2",
        "orem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut odio vitae turpis mattis vulputate in eget metus. Morbi at nisl eu tellus gravida condimentum. Phasellus bibendum auctor nisi, et ullamcorper",
        DateTime.now(),
        cor: NoteCardColors.blueGreyCard,
      ),
      Note(
        "Nota 3",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut odio vitae turpis mattis vulputate in eget metus. Morbi at nisl eu tellus gravida condimentum. Phasellus bibendum auctor nisi, et ullamcorper tellus volutpat sed. dignissim ex. In faucibus lorem in mi dictum elementum. Aenean elementum ac enim at rhoncus. Nullam ut condimentum dui. Vivamus nec consectetur odio. Nam ac convallis velit. Etiam euismod magna nisl, at maximus tellus condimentum vel. Nulla fringilla nunc quis posuere suscipit. Vestibulum vel maximus justo, non elementum nibh. Proin lacinia nulla tellus, eu dignissim augue auctor at. Curabitur interdum felis risus, non tincidunt tellus rhoncus egestas. In at cursus nibh.",
        DateTime.now(),
        cor: NoteCardColors.orangeCard,
      ),
      Note(
        "Nota 4",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        DateTime.now(),
        cor: NoteCardColors.pinkCard,
      ),
      Note(
        "Nota 5",
        "orem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut odio vitae turpis mattis vulputate in eget metus. Morbi at nisl eu tellus gravida condimentum. Phasellus bibendum auctor nisi, et ullamcorper",
        DateTime.now(),
        cor: NoteCardColors.redCard,
      ),
      Note(
        "Nota 6",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut odio vitae turpis mattis vulputate in eget metus. Morbi at nisl eu tellus gravida condimentum. Phasellus bibendum auctor nisi, et ullamcorper tellus volutpat sed. Duis ut sem pharetra, tempus nulla id, dignissim ex. In faucibus lorem in mi dictum elementum. Aenean elementum ac enim at rhoncus. Nullam ut condimentum dui. Vivamus nec consectetur odio. Nam ac convallis velit. Etiam euismod magna nisl, at maximus tellus condimentum vel. Nulla fringilla nunc quis posuere suscipit. Vestibulum vel maximus justo, non elementum nibh. Proin lacinia nulla tellus, eu dignissim augue auctor at. Curabitur interdum felis risus, non tincidunt tellus rhoncus egestas. In at cursus nibh.",
        DateTime.now(),
        cor: NoteCardColors.blueCard,
      )
    ];

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
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 45,
              ),
              onPressed: () {
                print("aaaaaaaaaaaaaaa");
              },
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
          SliverMasonryGrid(
            delegate: SliverChildListDelegate(
              notes.map((note) => noteCard(() {}, note)).toList(),
            ),
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

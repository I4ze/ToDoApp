import 'package:flutter/material.dart';
import 'package:to_do_app/models/note.dart';

class ExpandedNote extends StatelessWidget {
  ExpandedNote({super.key});

  final Note nota = Note('Nota exemplo', 'aaaaaa', DateTime.now());
  TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _titleController,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

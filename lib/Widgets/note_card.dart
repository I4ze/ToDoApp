import 'package:flutter/material.dart';
import 'package:to_do_app/models/note.dart';

Widget noteCard(Function()? onTap, Note note) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: note.getColor(),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(note.getTitulo()),
          Text(note.getData().toString()),
          Text(note.getCorpo()),
        ],
      ),
    ),
  );
}

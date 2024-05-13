import 'package:flutter/material.dart';
import 'package:to_do_app/models/note.dart';

Widget noteCard(Function()? onTap, Note note) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            offset: const Offset(0.1, 0.1),
            blurRadius: 6,
            spreadRadius: 1.0,
          )
        ],
        color: note.getColor(),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.getTitulo(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          Text(
            "${note.getData().day}/${note.getData().month}/${note.getData().year}",
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(processTextToShow(note.getCorpo())),
        ],
      ),
    ),
  );
}

String processTextToShow(String body) {
  if (body.length > 250) {
    return "${body.substring(1, 250)}...";
  }
  return body;
}

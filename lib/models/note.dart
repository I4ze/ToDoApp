import 'package:flutter/material.dart';

class Note {
  String titulo;
  String corpo;
  DateTime data;
  Color cor;

  Note(this.titulo, this.corpo, this.data, {this.cor = Colors.white});

  Color getColor() {
    return cor;
  }

  String getTitulo() {
    return titulo;
  }

  String getCorpo() {
    return corpo;
  }

  DateTime getData() {
    return data;
  }
}

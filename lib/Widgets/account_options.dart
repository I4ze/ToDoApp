import 'package:flutter/material.dart';

void showAccOptions(BuildContext context) {
  List<String> accountMenuItems = ["Configurações", "Sair"];

  showMenu(
    context: context,
    position: const RelativeRect.fromLTRB(
        50, 100, 0, 0), // Posição do menu em relação à tela
    items: accountMenuItems.map((String item) {
      return PopupMenuItem<String>(
        value: item,
        child: Text(item),
      );
    }).toList(),
  );
}



import 'package:flutter/material.dart';

class MensagemAlerta {
  void show({
    required BuildContext context,
    required String texto,
    required String titulo,
  }) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(titulo),
            content: Text(texto),
            actions: [
              TextButton(
                  onPressed: () {
                    _fechar(context);
                  },
                  child: Text('Ok'))
            ],
          );
        });
  }

  void _fechar(context) {
    return Navigator.pop(context);
  }
}

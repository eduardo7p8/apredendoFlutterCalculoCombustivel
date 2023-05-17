import 'package:flutter/cupertino.dart';

class BotaoQuadrado extends StatelessWidget {
  final String texto;
  final VoidCallback? clique;

  const BotaoQuadrado({required this.texto, this.clique, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(onPressed: clique, child: Text(texto));
  }
}

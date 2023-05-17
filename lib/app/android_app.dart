import 'package:aula02_pos_block/ui/android/home_page.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etanol x Gasolina',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

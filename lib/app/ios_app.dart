import 'package:aula02_pos_block/ui/ios/home_page.dart';
import 'package:flutter/cupertino.dart';

class IosApp extends StatelessWidget {
  const IosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Etanol x Gasolina',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

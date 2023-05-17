import 'dart:io';

import 'package:aula02_pos_block/app/android_app.dart';
import 'package:aula02_pos_block/app/ios_app.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

void main() {

  runApp(kIsWeb  || !Platform.isAndroid ? const AndroidApp() : const IosApp());

  // if (Platform.isAndroid) {
  //   runApp(const AndroidApp());
  // } else {
  //   runApp(const IosApp());
  // }
}

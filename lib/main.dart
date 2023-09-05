import 'package:flutter/material.dart';
import 'package:meme_app/core/app/main_app.dart';

import 'package:meme_app/core/injector/injector.dart' as injector;

void main() {
  injector.configureDependencies();
  runApp(const MainApp());
}

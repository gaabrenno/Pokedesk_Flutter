import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pokedesk/app/app_widget.dart';
import 'package:pokedesk/firebase_options.dart';

main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  
  runApp(
    const AppWidget()
  );
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pokedesk/checagem_page.dart';
import 'package:pokedesk/firebase_options.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
        runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedesk',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const ChecagemPage(),
    );
  }
}

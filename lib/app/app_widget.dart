import 'package:flutter/material.dart';
import 'package:pokedesk/app/module/auth/checagem/checagem_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

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

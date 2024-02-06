import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //o Scaffold traz todos os recursos necessarios para dar a aparencia do app, appBar, body, icons, funções...
      appBar: AppBar(
        title: const Text('Pokemon'),
      ),
      body: FutureBuilder<dynamic>(
        future: pegarPokemon(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  var pokemon = snapshot.data![index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(pokemon[index]['id'].toString()),
                ),
                title: Text(pokemon[index]['id']),
                subtitle: Text(pokemon['website']),
              );
            });
          }else if(snapshot.hasError){
            return Center(child:Text('${snapshot.error}'));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  pegarPokemon() async {
    var url= Uri.parse('https://pokeapi.co/api/v2/pokemon/?limit=151');
    var resposta = await http.get(url);
    if(resposta.statusCode == 200){
      return jsonDecode(resposta.body);
    } else{
      throw Exception('Não foi possivel carregar os usuários');
    }
  }

}

import 'package:flutter/material.dart';
import 'package:projeto_explore/views/contato_tela.dart';
import 'package:projeto_explore/views/destinos_tela.dart';
import 'package:projeto_explore/views/sobre_tela.dart';
import 'package:projeto_explore/views/pacotes_tela.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mundo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
          ),
          primaryColor: Colors.blue),
      home: const DestinosTela(),
      routes: {
        '/destinos': (context) => const DestinosTela(),
        '/pacotes': (context) => const PacotesTela(),
        '/contatos': (context) => const ContatoTela(),
        '/sobre': (context) => const SobreTela(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class PacotesTela extends StatelessWidget{
  const PacotesTela({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pacotes de viagem'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('Destinos'),
              onTap: () {
                Navigator.pushNamed(context, '/destinos');
              },
            ),
            ListTile(
              title: const Text('Pacotes'),
              onTap: () {
                Navigator.pushNamed(context, '/pacotes');
              },
            ),
            ListTile(
              title: const Text('Contato'),
              onTap: () {
                Navigator.pushNamed(context, '/contatos');
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              onTap: () {
                Navigator.pushNamed(context, '/sobre');
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: const Text(
          'Carregando pacotes, aguarde um momento!'
        ),
      ),
    );
  }
}
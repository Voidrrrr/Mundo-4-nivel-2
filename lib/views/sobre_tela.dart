import 'package:flutter/material.dart';

class SobreTela extends StatelessWidget {
  const SobreTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre nós'),
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
          'A Explore Mundo iniciou seu trabalho em 1990 com uma pequena agência'
          ' com o avanço da tecnologia sentimos a necessidade de expandir nosso alcance em'
          ' proporcionar as pessoas a possibilidade de viajar com qualidade. Desejamos uma'
          ' ótima experiência em nosso aplicativo.',
          softWrap: true,
        ),
      ),
    );
  }
}

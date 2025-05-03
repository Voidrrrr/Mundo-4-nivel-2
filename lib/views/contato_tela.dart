import 'package:flutter/material.dart';

class ContatoTela extends StatelessWidget{
  const ContatoTela({super.key});
  
  @override
  Widget build(BuildContext context) {
    Column buildContatoColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget contatoSection = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Acesse nossas redes sociais'),
        buildContatoColumn(color, Icons.one_x_mobiledata, 'X-Twitter'),
        buildContatoColumn(color, Icons.facebook, 'Facebook'),
        buildContatoColumn(color, Icons.info, 'Instagram'),
        buildContatoColumn(color, Icons.youtube_searched_for_sharp, 'Youtube'),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
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
      body: Center(
        child: contatoSection,
      ),
    );
  }
}
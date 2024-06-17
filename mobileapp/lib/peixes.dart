import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Peixes',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(17, 114, 120, 1),
        ),
        body: PeixesLitoralPaulista(),
      ),
    );
  }
}

class PeixesLitoralPaulista extends StatelessWidget {
  const PeixesLitoralPaulista({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'PEIXES DO LITORAL PAULISTA',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                PeixeCard(
                  image: 'images/lam.png',
                  nome: 'LAMBARI',
                  descricao:
                      'Um peixe pequeno de água doce, muito comum em rios e lagos da região paulista. É popular para pesca esportiva e como isca para peixes maiores.',
                ),
                const Divider(color: Colors.teal, thickness: 10),
                PeixeCard(
                  image: 'images/traira.png',
                  nome: 'TRAÍRA',
                  descricao:
                      'Um peixe de água doce bastante encontrado em rios, lagos e represas de São Paulo. É conhecido por sua agressividade e carne saborosa.',
                ),
                const Divider(color: Colors.teal, thickness: 10),
                PeixeCard(
                  image: 'images/pacu.png',
                  nome: 'PACU',
                  descricao:
                      'Peixe de água doce presente na região, especialmente em represas e rios. É apreciado tanto pela pesca esportiva quanto pela culinária, conhecido por sua carne firme e saborosa.',
                ),
                const Divider(color: Colors.teal, thickness: 10),
                PeixeCard(
                  image: 'images/pin.png',
                  nome: 'PINTADO',
                  descricao:
                      'Um peixe de água doce, popular em rios e represas de São Paulo. É conhecido por seu tamanho considerável e carne saborosa, sendo muito apreciado na pesca esportiva e na culinária.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PeixeCard extends StatelessWidget {
  final String image;
  final String nome;
  final String descricao;

  PeixeCard({required this.image, required this.nome, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 10),
        Text(
          nome,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          descricao,
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

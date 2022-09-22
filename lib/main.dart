import 'package:flutter/material.dart';

void main() => runApp(const CodicesSytema());

class CodicesSytema extends StatelessWidget {
  const CodicesSytema({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mikugram',
      home: MikugramApp(),
    );
  }
}

class MikugramApp extends StatelessWidget {
  const MikugramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mikugram'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
          )
        ],
      ),
      body: const FeeadPage(),
    );
  }
}

// construcao da feed
class FeeadPage extends StatelessWidget {
  const FeeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            MeusInfluences(
              imagem: 'assets/image/icon_01_unit01_miku.png',
              parceria: true,
            ),
          ],
        ),
      ],
    );
  }
}

// circulo avatar dos meus influenciadores
class MeusInfluences extends StatelessWidget {
  const MeusInfluences({super.key, required this.imagem});

  final String imagem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.red,
                gradient: const LinearGradient(
                  colors: [Colors.white, Colors.cyan],
                  begin: Alignment.topCenter,
                ),
              ),
              padding: const EdgeInsets.all(3),
              height: 100,
              width: 100,
            ),
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(imagem),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 111, 177, 117),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'AO VIVO',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 111, 177, 117),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(.0),
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Text('Seu Story'),
      ],
    );
  }
}

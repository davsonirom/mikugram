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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                MeusInfluences(
                  imagem: 'assets/image/icon_01_unit01_miku.png',
                  user: 'Seu Story',
                ),
                MeusInfluences(
                  imagem: 'assets/image/icon_02_unit01_rin.png',
                  user: 'ren.limao',
                ),
                MeusInfluences(
                  imagem: 'assets/image/icon_03_unit01_len.png',
                  user: 'len',
                ),
                MeusInfluences(
                  imagem: 'assets/image/icon_04_unit01_luka.png',
                  user: 'lukaluka',
                ),
                MeusInfluences(
                  imagem: 'assets/image/icon_05_unit01_meiko.png',
                  user: 'meiko_vocal',
                ),
                MeusInfluences(
                  imagem: 'assets/image/icon_06_unit01_kaito.png',
                  user: 'kaito',
                ),
              ],
            ),
          ),
          const Post(
            post: 'assets/post/foto1.png',
            usuarioAvatar: 'assets/image/icon_04_unit01_luka.png',
            usuarioNome: 'lukaluka',
            curtidas: 2.3131,
            legenda:
                'Hatsune Miku: Colorful Stage!, conhecido na Ásia como Project Sekai: Colorful Stage! Parceria. Hatsune Miku, é um jogo de ritmo para celular japonês desenvolvido pela Colorful Palette, um estúdio da CyberAgents Craft Egg, e publicado pela Sega Corporation',
          ),
          const Post(
            post: 'assets/post/foto2.jpeg',
            usuarioAvatar: 'assets/image/icon_02_unit01_rin.png',
            usuarioNome: 'rin.limao',
            curtidas: 203,
            legenda:
                'Hatsune Miku (em japonês: 初音ミク; também chamada Miku Hatsune) é um software de voicebank para Vocaloid desenvolvida pela Crypton Future Media',
          ),
          const Post(
            post: 'assets/post/foto3.jpg',
            usuarioAvatar: 'assets/image/icon_05_unit01_meiko.png',
            usuarioNome: 'meiko_vocal',
            curtidas: 2.000,
            legenda: 'Hatsune Miku love you',
          ),
        ],
      ),
    );
  }
}

// circulo avatar dos meus influenciadores
class MeusInfluences extends StatelessWidget {
  const MeusInfluences({super.key, required this.imagem, required this.user});

  final String imagem;
  final String user;

  final double cima = 80;
  final double lado = 80;

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
              height: cima,
              width: lado,
            ),
            Container(
              width: lado,
              height: cima,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(imagem),
              ),
            ),
            SizedBox(
              width: lado,
              height: cima,
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
              width: lado,
              height: cima,
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
        Text(user),
      ],
    );
  }
}

// construido o post
class Post extends StatelessWidget {
  const Post(
      {super.key,
      required this.post,
      required this.usuarioAvatar,
      required this.usuarioNome,
      required this.curtidas,
      this.legenda});

  final String post;
  final String usuarioAvatar;
  final String usuarioNome;
  final double curtidas;
  final String? legenda;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // usuario
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          child: InkWell(
            onTap: () {},
            child: Row(children: [
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
                    height: 40,
                    width: 40,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(usuarioAvatar),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(usuarioNome),
              ),
            ]),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
      ]),

      // foto
      Container(
        color: Colors.yellowAccent,
        child: Image.asset(
          post,
          fit: BoxFit.contain,
        ),
      ),

      // botoes >> linha
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.message_outlined)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.send)),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
              ],
            ),
            // curtidas e leganda
            Text('$curtidas curtidas'),
            Text(legenda ?? ''),
          ],
        ),
      ),
      // comentarios
    ]);
  }
}

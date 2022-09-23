import 'package:flutter/material.dart';
import 'package:mikugram/feead/meus_influences.dart';
import 'package:mikugram/feead/post.dart';

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
            comentarios: 324,
          ),
          const Post(
            post: 'assets/post/foto2.jpeg',
            usuarioAvatar: 'assets/image/icon_02_unit01_rin.png',
            usuarioNome: 'rin.limao',
            curtidas: 203,
            legenda:
                'Hatsune Miku (em japonês: 初音ミク; também chamada Miku Hatsune) é um software de voicebank para Vocaloid desenvolvida pela Crypton Future Media',
            comentarios: 100,
          ),
          const Post(
            post: 'assets/post/foto3.jpg',
            usuarioAvatar: 'assets/image/icon_05_unit01_meiko.png',
            usuarioNome: 'meiko_vocal',
            curtidas: 2.000,
            legenda: 'Hatsune Miku love you',
            comentarios: 6,
          ),
        ],
      ),
    );
  }
}

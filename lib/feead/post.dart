import 'package:flutter/material.dart';

// construido o post
class Post extends StatelessWidget {
  const Post(
      {super.key,
      required this.post,
      required this.usuarioAvatar,
      required this.usuarioNome,
      required this.curtidas,
      this.legenda,
      this.comentarios});

  final String post;
  final String usuarioAvatar;
  final String usuarioNome;
  final double curtidas;
  final String? legenda;
  final int? comentarios;

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
                child: Text(
                  usuarioNome,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
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
            Text(
              '$curtidas curtidas',
            ),
            Text(legenda ?? ''),
            Text(
              'ver todos dos $comentarios comentarios',
              style: const TextStyle(color: Colors.black45),
            ),
          ],
        ),
      ),
      // comentarios
    ]);
  }
}

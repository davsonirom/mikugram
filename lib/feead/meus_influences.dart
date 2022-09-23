import 'package:flutter/material.dart';

// circulo avatar dos meus influenciadores
class MeusInfluences extends StatelessWidget {
  const MeusInfluences({super.key, required this.imagem, required this.user});

  final String imagem;
  final String user;

  final double cima = 80;
  final double lado = 80;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        'AO VIVO',
                        style: Theme.of(context).textTheme.headlineSmall,
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
          Text(
            user,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}

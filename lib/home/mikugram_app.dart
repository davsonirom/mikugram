import 'package:flutter/material.dart';
import 'package:mikugram/feead/feead.dart';

class MikugramApp extends StatefulWidget {
  const MikugramApp({super.key});

  @override
  State<MikugramApp> createState() => _MikugramAppState();
}

class _MikugramAppState extends State<MikugramApp> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Mikugram', style: Theme.of(context).textTheme.headlineLarge),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white60,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 33,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'HomeFeed',
              icon: Icon(
                Icons.home_filled,
              )),
          BottomNavigationBarItem(
              label: 'Buscara',
              icon: Icon(
                Icons.search,
              )),
          BottomNavigationBarItem(
              label: 'Explore',
              icon: Icon(
                Icons.explore,
              )),
          BottomNavigationBarItem(
              label: 'Shop',
              icon: Icon(
                Icons.shopping_bag_rounded,
              )),
          BottomNavigationBarItem(
            label: 'Pefil',
            icon: Icon(
              Icons.photo_camera_front_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../model/animegirl.dart';
import 'components/animegirl_component.dart';

class CatalogPage extends StatelessWidget{

  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black54,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
        title: const Center(child: Text('Animegirls Vote'), ),
      ),
      body: ListView.builder(
          itemCount: animeGirls.length,
          itemBuilder: (BuildContext context, int index) {
            AnimeGirl animeGirl = animeGirls[index];
            return AnimegirlComponent(animeGirl: animeGirl);
          }
      ),
    );
  }
}

final List<AnimeGirl> animeGirls = [
  AnimeGirl.fromJson({
    "id": "001",
    "name": "Эрешкигаль",
    "description": "Богиня подземного мира из Fate/Grand Order, известная своей силой и красотой.",
  }),
  AnimeGirl.fromJson({
    "id": "002",
    "name": "Асука Лангли Сорью",
    "description": "Пилот из Neon Genesis Evangelion, известная своим вспыльчивым характером.",
  }),
  AnimeGirl.fromJson({
    "id": "003",
    "name": "Тосака Рин",
    "description": "Маг из Fate/stay night, известная своим умом и боевыми навыками.",
  }),
  AnimeGirl.fromJson({
    "id": "004",
    "name": "Рем",
    "description": "Верная горничная из Re:Zero, известная своей силой и преданностью друзьям.",
  }),
  AnimeGirl.fromJson({
    "id": "005",
    "name": "Микаса Аккерман",
    "description": "Умелая солдатка из Attack on Titan, яростно защищающая своих друзей.",
  }),
];
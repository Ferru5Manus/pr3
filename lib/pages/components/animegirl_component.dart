import 'package:flutter/material.dart';
import 'package:pr3/pages/animegirl_page.dart';

import '../../model/animegirl.dart';

class AnimegirlComponent extends StatelessWidget {

  const AnimegirlComponent({super.key, required this.animeGirl});

  final AnimeGirl animeGirl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimegirlPage(animeGirl: animeGirl),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: Colors.black54,
              width: 4.0,
            ),
          ),
          width: double.infinity,
          constraints: const BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    animeGirl.name,
                    style: const TextStyle(fontSize: 34, color: Colors.black),
                  ),
                ),
                Text(
                  animeGirl.description,
                  style: const TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Image(image: AssetImage('images/tile${animeGirl.id}.jpg'), width: 200, height: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
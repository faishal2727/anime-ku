import 'package:anime_ku/common/constants.dart';
import 'package:anime_ku/domain/entities/genre/response_genre.dart';
import 'package:anime_ku/presentation/get_by_genre/screen/get_by_genre_screen.dart';
import 'package:flutter/material.dart';

class CardGenre extends StatelessWidget {
  final ResponseGenre genre;
  const CardGenre({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final genres = genre.data?[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GetByGenreScreen(genre: genres ?? "");
              }));
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(8)),
              child: Text(genres ?? "", style: kSubtitle,),
            ),
          );
        },
        itemCount: genre.data!.length,
      ),
    );
  }
}

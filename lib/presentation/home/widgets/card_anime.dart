import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/presentation/detail/screen/detail_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardAnime extends StatelessWidget {
  final ResponseAnimeOngoing animes;
  const CardAnime({super.key, required this.animes});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) {
          final anime = animes.data?.ongoing?[index];
          return Container(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                debugPrint("check id ${animes.data!.ongoing?[index].id ?? ""}");
                return DetailScreen(id: animes.data!.ongoing?[index].id ?? "");
              },
            ),
          );
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                child: CachedNetworkImage(
                  imageUrl: anime?.thumbnail ?? "",
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          );
        },
        itemCount: animes.data?.ongoing?.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

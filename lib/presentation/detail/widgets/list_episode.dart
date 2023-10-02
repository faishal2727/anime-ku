import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/presentation/web_view/webview.dart';
import 'package:flutter/material.dart';

class ListEpisode extends StatelessWidget {
  final ResponseDetailAnime episode;
  const ListEpisode({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: episode.data?.episode?.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EpisodeWebview(
                    url: episode.data?.episode?[index].url ?? "");
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 4),
              padding: const EdgeInsets.all(8),
              decoration: ShapeDecoration(
                
                shape: Border.all(color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.movie_creation),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          episode.data?.episode?[index].episode ?? " ",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_right),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

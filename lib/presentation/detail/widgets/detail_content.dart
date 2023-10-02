import 'package:anime_ku/common/constants.dart';
import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/presentation/detail/widgets/list_episode.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailContent extends StatelessWidget {
  final ResponseDetailAnime anime;
  const DetailContent({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: anime.data?.thumbnail ?? " ",
          width: screenWidth,
          fit: BoxFit.fill,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        Container(
          margin: const EdgeInsets.only(top: 48 + 8),
          child: DraggableScrollableSheet(
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.0),
                  ),
                ),
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              anime.data?.title ?? "",
                              style: kHeading5,
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    Text(anime.data?.score ?? ""),
                                  ],
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  height: 12,
                                  width: 1,
                                  color: Colors.black,
                                ),
                                const SizedBox(width: 4),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.watch_later_sharp,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                    Text(anime.data?.duration ?? ""),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(anime.data?.genre ?? ""),
                            const SizedBox(height: 8),
                            Text("Tanggal Rilis : ${anime.data?.releaseDate}"),
                            const SizedBox(height: 12),
                            Text(
                              'Sinopsis',
                              style: kHeading6,
                            ),
                            Text(anime.data!.synopsis!.trim().isEmpty
                                ? "Yaah Tidak ada sinopsis" 
                                : anime.data?.synopsis ?? " ",style: kBodyText,),
                            const SizedBox(height: 8),
                            Text(
                              "List Episode : ",
                              style: kHeading6,
                            ),
                            const SizedBox(height: 8),
                            ListEpisode(episode: anime)
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        color: Colors.black,
                        height: 4,
                        width: 48,
                      ),
                    )
                  ],
                ),
              );
            },
            minChildSize: 0.38,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: kRichBlack,
            foregroundColor: Colors.white,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new)),
          ),
        ),
      ],
    );
  }
}

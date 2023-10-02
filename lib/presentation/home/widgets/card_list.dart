import 'package:anime_ku/common/constants.dart';
import 'package:anime_ku/domain/entities/anime_ongoing/ongoing/ongoing.dart';
import 'package:anime_ku/presentation/detail/screen/detail_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final Ongoing? anim;
  const CardList({super.key, required this.anim});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen(id: anim?.id ?? "");
              },
            ),
          );
        },
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Card(
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                left: 16 + 80 + 16,
                bottom: 8,
                right: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    anim?.title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: kHeading6,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.movie,
                        color: Colors.amber,
                        size: 16,
                      ),
                      Text(anim?.episode ?? ""),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              bottom: 16,
            ),
            child: ClipRRect(
              // ignore: sort_child_properties_last
              child: CachedNetworkImage(
                imageUrl: anim?.thumbnail ?? "",
                width: 80,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ]),
      ),
    );
  }
}

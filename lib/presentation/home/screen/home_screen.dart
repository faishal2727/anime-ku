import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/presentation/detail/screen/detail_screen.dart';
import 'package:anime_ku/presentation/home/bloc/home_bloc.dart';
import 'package:anime_ku/presentation/search/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimeKu'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: Column(children: [
        Expanded(child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is Initial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is Loaded) {
              return buildCard(context, state.anime);
            } else {
              return Container();
            }
          },
        ))
      ]),
    );
  }
}

Widget buildCard(BuildContext context, ResponseAnimeOngoing model) {
  return ListView.builder(
    itemCount: model.data?.ongoing?.length,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                print("tai ${model.data!.ongoing?[index].id ?? ""}");
                return DetailScreen(id: model.data!.ongoing?[index].id ?? "");
              },
            ),
          );
        },
        child: Container(
          color: Colors.amber.shade600,
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInImage.assetNetwork(
                placeholder: 'assets/images/load.png',
                fadeInDuration: const Duration(seconds: 2),
                fadeOutDuration: const Duration(seconds: 2),
                image: model.data?.ongoing?[index].thumbnail ?? " ",
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 4.0),
              Text(
                model.data?.ongoing?[index].title ?? " ",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                model.data?.ongoing?[index].episode ?? " ",
                maxLines: 2,
              )
            ],
          ),
        ),
      );
    },
  );
}

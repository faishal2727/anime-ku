import 'package:anime_ku/common/constants.dart';
import 'package:anime_ku/data/di/injection.dart';
import 'package:anime_ku/presentation/home/bloc/home_bloc.dart';
import 'package:anime_ku/presentation/home/widgets/card_anime.dart';
import 'package:anime_ku/presentation/home/widgets/card_genre.dart';
import 'package:anime_ku/presentation/home/widgets/card_list.dart';
import 'package:anime_ku/presentation/search/screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              accountName: Text('AnimeKu'),
              accountEmail: Text('corolautjawa@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text('Anime'),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Tentang'),
            ),
          ],
        ),
      ),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Genre',
                style: kHeading6,
              ),
              BlocBuilder<HomeBloc, HomeState>(
                bloc: HomeBloc(locator(), locator())
                  ..add(HomeEvent.loadGenre()),
                builder: ((context, state) {
                  if (state is Initial) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is Loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is GetGenre) {
                    return CardGenre(genre: state.genre);
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return Container();
                  }
                }),
              ),
              Text(
                'Sedang Tayang',
                style: kHeading6,
              ),
              BlocBuilder<HomeBloc, HomeState>(
                bloc: HomeBloc(locator(), locator())
                  ..add(const HomeEvent.loadMore()),
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
                    return CardAnime(animes: state.anime);
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              const SizedBox(height: 8,),
              Text('List Anime', style: kHeading6),
              BlocBuilder<HomeBloc, HomeState>(
                bloc: HomeBloc(locator(), locator())
                  ..add(const HomeEvent.loadMore()),
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
                    return ListView.builder(
                      shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: state.anime.data?.ongoing?.length,
                        itemBuilder: (context, index) {
                          return CardList(
                              anim: state.anime.data?.ongoing?[index]);
                        });
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

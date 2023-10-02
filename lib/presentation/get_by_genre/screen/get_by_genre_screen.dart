import 'package:anime_ku/data/di/injection.dart';
import 'package:anime_ku/presentation/get_by_genre/bloc/get_by_genre_bloc.dart';
import 'package:anime_ku/presentation/get_by_genre/widgets/card_animes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetByGenreScreen extends StatelessWidget {
  final String genre;
  const GetByGenreScreen({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List By Genre"),
      ),
      body: BlocBuilder<GetByGenreBloc, GetByGenreState>(
        bloc: GetByGenreBloc(locator())..add(GetByGenreEvent.loadMore(genre)),
        builder: ((context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Error) {
            return const Center(
              child: Text("Error"),
            );
          } else if (state is Loaded) {
            debugPrint("Ada tidak ${state.byGenre}");
            return ListView.builder(
              itemCount: state.byGenre.data?.length ?? 0,
              itemBuilder: (context, index) {
                final anim = state.byGenre.data?[index];
                return CardAnimes(anim: anim);
              },
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}

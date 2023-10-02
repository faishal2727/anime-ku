import 'package:anime_ku/data/di/injection.dart';
import 'package:anime_ku/presentation/detail/bloc/detail_anime_bloc.dart';
import 'package:anime_ku/presentation/detail/widgets/detail_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailAnimeBloc, DetailAnimeState>(
        bloc: DetailAnimeBloc(locator())..add(DetailAnimeEvent.getDetail(id)),
        builder: ((context, state) {
          if (state is Loading) {
            debugPrint("ini id $id");
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Loaded) {
            debugPrint("vvv ${state.anime}");
            return SafeArea(child: DetailContent(anime: state.anime));
          } else if (state is Error) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}



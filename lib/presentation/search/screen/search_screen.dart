import 'package:anime_ku/presentation/search/bloc/search_bloc.dart';
import 'package:anime_ku/presentation/search/screen/card_list_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cari AnimeKu'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                onChanged: (query) {
                  context.read<SearchBloc>().add(Query(query));
                },
                decoration: const InputDecoration(
                  hintText: 'Cari Anime',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.search,
              ),
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is Error) {
                    return const Center(
                      child: Text("Error"),
                    );
                  } else if (state is Loaded) {
                    return ListView.builder(
                        itemCount: state.searchData.data?.length,
                        itemBuilder: (context, index) {
                          return CardListSearch(
                              anim: state.searchData.data?[index]);
                        });
                  } else {
                    return Container();
                  }
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}

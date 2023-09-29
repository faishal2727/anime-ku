import 'package:anime_ku/domain/entities/search/response_search/search_response.dart';
import 'package:anime_ku/presentation/detail/screen/detail_screen.dart';
import 'package:anime_ku/presentation/search/bloc/search_bloc.dart';
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
                    return buildCard(context, state.searchData);
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

Widget buildCard(BuildContext context, ResponseSearch model) {
  return ListView.builder(
    itemCount: model.data?.length,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                print("tai ${model.data![index].id ?? ""}");
                return DetailScreen(id: model.data?[index].id ?? "");
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
                image: model.data?[index].thumbnail ?? " ",
                width: MediaQuery.of(context).size.width,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 4.0),
              Text(
                model.data?[index].title ?? " ",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      );
    },
  );
}

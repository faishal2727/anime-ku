import 'package:anime_ku/data/di/injection.dart';
import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/presentation/detail/bloc/detail_anime_bloc.dart';
import 'package:anime_ku/presentation/web_view/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailScreen extends StatelessWidget {
  final String id;
  const DetailScreen({super.key, required this.id});
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: BlocBuilder<DetailAnimeBloc, DetailAnimeState>(
     
        bloc: DetailAnimeBloc(locator())..add(DetailAnimeEvent.getDetail(id)),
        
        builder: ((context, state) {
          if (state is Loading) {
            print("ini id $id");
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Loaded) {
            print("vvv ${state.anime}");
            return _buildContent(context, state.anime);
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}

Widget _buildContent(BuildContext context, ResponseDetailAnime model) {
  
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      
      Image.network(
        model.data?.thumbnail?? "",
        width: MediaQuery.of(context).size.width,
        height: 350,
        fit: BoxFit.fill,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
              Text(model.data?.title?? " ",
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.w500)),
              Text(model.data?.duration?? " "),
              Text(model.data?.genre?? " "),
              const SizedBox(height: 4.0),
              Text(model.data?.synopsis?? " "),
              const Text(
                'Daftar Episode : ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: _episodeCard(context, model),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget _episodeCard(BuildContext context, ResponseDetailAnime anime) {
  return ListView.builder(
    itemCount: anime.data?.episode?.length,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return  EpisodeWebview(url: anime.data?.episode?[index].url?? "");
          }));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(shape: Border.all(color: Colors.amber)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                anime.data?.episode?[index].episode?? " ",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(anime.data?.episode?[index].episode?? " "),
            ],
          ),
        ),
      );
    },
  );
}

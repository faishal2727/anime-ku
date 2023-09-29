import 'package:anime_ku/data/di/injection.dart' as di;
import 'package:anime_ku/presentation/detail/bloc/detail_anime_bloc.dart';
import 'package:anime_ku/presentation/home/bloc/home_bloc.dart';
import 'package:anime_ku/presentation/home/screen/home_page.dart';
import 'package:anime_ku/presentation/search/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.locator<HomeBloc>()
            ..add(
              const HomeEvent.loadMore(),
            ),
          child: const HomePage(),
        ),
        BlocProvider(
          create: (context) => di.locator<DetailAnimeBloc>()
            ..add(
              DetailAnimeEvent.getDetail(
                di.locator(),
              ),
            ),
        ),
        BlocProvider(create: (context) => di.locator<SearchBloc>())
      ],
      child: MaterialApp(
        title: 'aplikasi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}

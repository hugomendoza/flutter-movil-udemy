import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/presentation/delegates/search_movie_delegate.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

class CustomAppbar extends ConsumerWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
      left: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          child: Row(
            children: [
              Icon( Icons.movie_outlined, color: colors.primary),
              const SizedBox(width: 5),
              Text('Cinemapedia', style: titleStyle),
              const Spacer(),
              IconButton(
                onPressed: () {
                  
                  final searchedMovies = ref.read( searchedMoviesProvider );
                  final searchQuery = ref.read(searchQueryProvider);
                  
                  showSearch<Movie?>(
                    query: searchQuery,
                    context: context,
                    delegate: SearchMovieDelegate(
                      // searchMovies: ( query ) {
                      //   ref.read(searchQueryProvider.notifier).update((state) => query);
                      //   return movieRepository.searchMovies(query);
                      // }
                      initialMovies: searchedMovies,
                      searchMovies: ref.read( searchedMoviesProvider.notifier ).searchMoviesByQuery,
                    )
                  ).then((movie) {
                    if(movie == null) return;
                    context.push('/home/0/movie/${movie.id}');
                  });
                },
                icon: const Icon(Icons.search),
              )
            ],
          ),
        ),
      ),
    );
  }
}
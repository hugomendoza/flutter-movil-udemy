import 'package:cinemapedia/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repositories/actors_repositorie.dart';

class ActorRepositoryImpl extends ActorsRepository {
  
  final ActorsDatasource datasource;
  ActorRepositoryImpl(this.datasource);
  
  @override
  Future<List<Actor>> getActorsByMovieId(String movieId) {
    return datasource.getActorsByMovieId(movieId);
  }

  
}
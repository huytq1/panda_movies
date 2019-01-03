import 'dart:async';
import 'movie_api_provider.dart';
import '../models/item_model.dart';

class MovieRepository{
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetMovieLit();
}
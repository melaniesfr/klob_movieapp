import 'package:flutter/material.dart';
import 'package:klob_movieapp/models/movie_model.dart';
import 'package:klob_movieapp/services/movie_service.dart';

class MovieProvider with ChangeNotifier {
  List<MovieModel> _movies = [];

  List<MovieModel> get movies => _movies;

  set movies(List<MovieModel> movies) {
    _movies = movies;
    notifyListeners();
  }

  Future<void> getMovies() async {
    try {
      List<MovieModel> movies = await MovieService().getMovies();
      _movies = movies;
    } catch (e) {
      print(e);
    }
  }
}

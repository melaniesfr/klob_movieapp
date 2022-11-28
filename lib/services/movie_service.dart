import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:klob_movieapp/models/movie_model.dart';

class MovieService {
  String baseUrl = 'https://dlabs-test.irufano.com/api';

  Future<List<MovieModel>> getMovies() async {
    var url = '$baseUrl/movie';
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<MovieModel> movies = [];

      for (var item in data) {
        movies.add(MovieModel.fromJson(item));
      }

      return movies;
    } else {
      throw Exception('Get Movies Failed!');
    }
  }
}

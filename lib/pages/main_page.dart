import 'package:flutter/material.dart';
import 'package:klob_movieapp/providers/movie_provider.dart';
import 'package:klob_movieapp/widgets/movie_tile.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    MovieProvider movieProvider = Provider.of<MovieProvider>(context);

    Widget movieList() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: GridView.count(
          crossAxisCount: 2,
          children: movieProvider.movies
              .map(
                (movie) => MovieTile(movie),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: movieList(),
    );
  }
}

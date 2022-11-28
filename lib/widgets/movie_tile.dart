import 'package:flutter/material.dart';
import 'package:klob_movieapp/models/movie_model.dart';

class MovieTile extends StatelessWidget {
  final MovieModel movie;
  MovieTile(this.movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(
                movie.poster,
                width: (MediaQuery.of(context).size.width - 50) / 2,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12),
            Text(
              movie.title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                overflow: TextOverflow.ellipsis,
              ),
              textAlign: TextAlign.left,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}

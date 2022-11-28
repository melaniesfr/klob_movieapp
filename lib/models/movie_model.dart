class MovieModel {
  late int id;
  late String title;
  late String description;
  late String poster;
  late DateTime createdDate;

  MovieModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.poster,
      required this.createdDate});

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    poster = json['poster'];
    createdDate = DateTime.parse(json['created_date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'poster': poster,
      'createdDate': createdDate.toString(),
    };
  }

  // static List<MovieModel> parseList(List<dynamic> list) {
  //   return list.map((i) => MovieModel.fromJson(i)).toList();
  // }
}

class UninitializedMovieModel extends MovieModel {
  UninitializedMovieModel.fromJson(super.json) : super.fromJson();
}

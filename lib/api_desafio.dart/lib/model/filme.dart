// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Filme {
  final bool adult;
  final String backdropPath;
  final List<int> genreids;
  final String id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final num voteAverage;
  final int voteCount;

  Filme({
    required this.adult,
    required this.backdropPath,
    required this.genreids,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreids,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }

  factory Filme.fromMap(Map<String, dynamic> map) {
    return Filme(
      adult: map['adult'] ?? false,
      backdropPath: map['backdrop_path'] ?? '',
      genreids: List<int>.from(map['genre_ids']),
      id: map['id'] ?? '',
      originalLanguage: map['original_language'] ?? '',
      originalTitle: map['original_title'] ?? '',
      overview: map['overview'] ?? '',
      popularity: map['popularity'] ?? 0.0,
      posterPath: map['poster_path'] ?? '',
      releaseDate: map['release_date'] ?? '',
      title: map['title'] ?? '',
      video: map['video'] ?? false,
      voteAverage: map['vote_average'] ?? 0,
      voteCount: map['vote_count'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Filme.fromJson(String source) => Filme.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Filme(adult: $adult, backdropPath: $backdropPath, genreids: $genreids, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }
}











// {
// adult: false,
// backdrop_path: "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
// genre_ids: [
// 28,
// 12,
// 878,
// ],
// id: "634649",
// original_language: "en",
// original_title: "Spider-Man: No Way Home",
// overview: "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
// popularity: 6925.636,
// poster_path: "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
// release_date: "2021-12-15",
// title: "Spider-Man: No Way Home",
// video: false,
// vote_average: 8.2,
// vote_count: 11703,
// },
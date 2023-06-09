import 'dart:convert';

import 'package:netfilx_clone/domain/past_year/past_year.dart';
import 'package:http/http.dart' as http;

import '../../core/api.dart';

Future<List<Result>> getPastYear() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=vote_average.desc&without_genres=99,10755&vote_count.gte=200&${apiKey}'));
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = PastYear.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}

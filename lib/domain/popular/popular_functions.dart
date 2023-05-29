import 'dart:convert';

import 'package:netfilx_clone/domain/popular/popular.dart';

import 'package:http/http.dart' as http;

Future<List<Result>> getImageFromPopular() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/discover/movie?include_adult=false&api_key=4c91083729fb888612ce145aea0ba02e'));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = Popular.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netfilx_clone/domain/search_function/search.dart';

import '../../core/api.dart';

Future<List<Result>> getimageSearch() async {
  final response = await http.get(
    Uri.parse('https://api.themoviedb.org/3/trending/all/week?${apiKey}'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Search.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

Future<List<Result>> getimageSearchGrid(String search) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/search/movie?${apiKey}&query=${search}'));

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Search.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

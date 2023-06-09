import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netfilx_clone/domain/trending/trending.dart';

import '../../core/api.dart';

Future<List<Result>> getImageTrending() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/trending/all/week?${apiKey}'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Trending.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}

import 'dart:convert';

import 'package:netfilx_clone/domain/top10_tv/top10_tv.dart';
import 'package:http/http.dart' as http;

import '../../core/api.dart';

Future<List<Result>> getImageFromTV() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/discover/tv?include_adult=false&${apiKey}'));
  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    final result = Top10Tv.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trending _$TrendingFromJson(Map<String, dynamic> json) => Trending(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TrendingToJson(Trending instance) => <String, dynamic>{
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      poster_path: json['poster_path'] as String?,
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
      backdrop_path: json['backdrop_path'] as String?,
      release_date: json['release_date'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'poster_path': instance.poster_path,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'backdrop_path': instance.backdrop_path,
      'release_date': instance.release_date,
    };

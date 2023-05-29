// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top10_tv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Top10Tv _$Top10TvFromJson(Map<String, dynamic> json) => Top10Tv(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Top10TvToJson(Top10Tv instance) => <String, dynamic>{
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'past_year.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PastYear _$PastYearFromJson(Map<String, dynamic> json) => PastYear(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PastYearToJson(PastYear instance) => <String, dynamic>{
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
    };

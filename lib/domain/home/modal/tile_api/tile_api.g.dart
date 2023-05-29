// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TileApi _$TileApiFromJson(Map<String, dynamic> json) => TileApi(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TileApiToJson(TileApi instance) => <String, dynamic>{
      'results': instance.results,
    };

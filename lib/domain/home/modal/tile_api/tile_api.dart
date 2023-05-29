import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'tile_api.g.dart';

@JsonSerializable()
class TileApi {
  @JsonKey(name: 'results')
  List<Result>? results;

  TileApi({this.results});

  factory TileApi.fromJson(Map<String, dynamic> json) {
    return _$TileApiFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TileApiToJson(this);
}

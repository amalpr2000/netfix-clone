import 'package:json_annotation/json_annotation.dart';

part 'top10_tv.g.dart';

@JsonSerializable()
class Top10Tv {
  List<Result>? results;

  Top10Tv({this.results});

  factory Top10Tv.fromJson(Map<String, dynamic> json) {
    return _$Top10TvFromJson(json);
  }

  Map<String, dynamic> toJson() => _$Top10TvToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'poster_path')
  String? posterPath;

  Result({this.posterPath});

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

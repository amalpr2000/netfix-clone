import 'package:json_annotation/json_annotation.dart';
part 'tv_series.g.dart';

@JsonSerializable()
class TvSeries {
  List<Result>? results;

  TvSeries({this.results});

  factory TvSeries.fromJson(Map<String, dynamic> json) {
    return _$TvSeriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TvSeriesToJson(this);
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

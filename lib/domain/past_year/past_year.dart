import 'package:json_annotation/json_annotation.dart';


part 'past_year.g.dart';

@JsonSerializable()
class PastYear {
  List<Result>? results;

  PastYear({this.results});

  factory PastYear.fromJson(Map<String, dynamic> json) {
    return _$PastYearFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PastYearToJson(this);
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

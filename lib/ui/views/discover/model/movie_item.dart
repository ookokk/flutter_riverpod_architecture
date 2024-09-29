import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'movie_item.freezed.dart';
part 'movie_item.g.dart';

@freezed
class MovieItem with _$MovieItem {
  const factory MovieItem({
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'overview') String? overview,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'adult') bool? adult,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    @JsonKey(name: 'popularity') double? popularity,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'video') bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _MovieItem;

  factory MovieItem.fromJson(Map<String, Object?> json) =>
      _$MovieItemFromJson(json);
}

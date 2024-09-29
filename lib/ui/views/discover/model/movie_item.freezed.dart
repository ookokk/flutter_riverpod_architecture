// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieItem _$MovieItemFromJson(Map<String, dynamic> json) {
  return _MovieItem.fromJson(json);
}

/// @nodoc
mixin _$MovieItem {
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'overview')
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult')
  bool? get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'popularity')
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'video')
  bool? get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieItemCopyWith<MovieItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieItemCopyWith<$Res> {
  factory $MovieItemCopyWith(MovieItem value, $Res Function(MovieItem) then) =
      _$MovieItemCopyWithImpl<$Res, MovieItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
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
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class _$MovieItemCopyWithImpl<$Res, $Val extends MovieItem>
    implements $MovieItemCopyWith<$Res> {
  _$MovieItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? adult = freezed,
    Object? title = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = freezed,
    Object? releaseDate = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieItemImplCopyWith<$Res>
    implements $MovieItemCopyWith<$Res> {
  factory _$$MovieItemImplCopyWith(
          _$MovieItemImpl value, $Res Function(_$MovieItemImpl) then) =
      __$$MovieItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
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
      @JsonKey(name: 'vote_count') int? voteCount});
}

/// @nodoc
class __$$MovieItemImplCopyWithImpl<$Res>
    extends _$MovieItemCopyWithImpl<$Res, _$MovieItemImpl>
    implements _$$MovieItemImplCopyWith<$Res> {
  __$$MovieItemImplCopyWithImpl(
      _$MovieItemImpl _value, $Res Function(_$MovieItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? adult = freezed,
    Object? title = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = freezed,
    Object? releaseDate = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$MovieItemImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieItemImpl with DiagnosticableTreeMixin implements _MovieItem {
  const _$MovieItemImpl(
      {@JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'original_title') this.originalTitle,
      @JsonKey(name: 'overview') this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'media_type') this.mediaType,
      @JsonKey(name: 'adult') this.adult,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @JsonKey(name: 'popularity') this.popularity,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'video') this.video,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'vote_count') this.voteCount})
      : _genreIds = genreIds;

  factory _$MovieItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieItemImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  @override
  @JsonKey(name: 'overview')
  final String? overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @override
  @JsonKey(name: 'adult')
  final bool? adult;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  final List<int>? _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'popularity')
  final double? popularity;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'video')
  final bool? video;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int? voteCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieItem(backdropPath: $backdropPath, id: $id, originalTitle: $originalTitle, overview: $overview, posterPath: $posterPath, mediaType: $mediaType, adult: $adult, title: $title, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, releaseDate: $releaseDate, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieItem'))
      ..add(DiagnosticsProperty('backdropPath', backdropPath))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('originalTitle', originalTitle))
      ..add(DiagnosticsProperty('overview', overview))
      ..add(DiagnosticsProperty('posterPath', posterPath))
      ..add(DiagnosticsProperty('mediaType', mediaType))
      ..add(DiagnosticsProperty('adult', adult))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('originalLanguage', originalLanguage))
      ..add(DiagnosticsProperty('genreIds', genreIds))
      ..add(DiagnosticsProperty('popularity', popularity))
      ..add(DiagnosticsProperty('releaseDate', releaseDate))
      ..add(DiagnosticsProperty('video', video))
      ..add(DiagnosticsProperty('voteAverage', voteAverage))
      ..add(DiagnosticsProperty('voteCount', voteCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieItemImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backdropPath,
      id,
      originalTitle,
      overview,
      posterPath,
      mediaType,
      adult,
      title,
      originalLanguage,
      const DeepCollectionEquality().hash(_genreIds),
      popularity,
      releaseDate,
      video,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieItemImplCopyWith<_$MovieItemImpl> get copyWith =>
      __$$MovieItemImplCopyWithImpl<_$MovieItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieItemImplToJson(
      this,
    );
  }
}

abstract class _MovieItem implements MovieItem {
  const factory _MovieItem(
      {@JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'original_title') final String? originalTitle,
      @JsonKey(name: 'overview') final String? overview,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'media_type') final String? mediaType,
      @JsonKey(name: 'adult') final bool? adult,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'genre_ids') final List<int>? genreIds,
      @JsonKey(name: 'popularity') final double? popularity,
      @JsonKey(name: 'release_date') final String? releaseDate,
      @JsonKey(name: 'video') final bool? video,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'vote_count') final int? voteCount}) = _$MovieItemImpl;

  factory _MovieItem.fromJson(Map<String, dynamic> json) =
      _$MovieItemImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @JsonKey(name: 'overview')
  String? get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  @JsonKey(name: 'adult')
  bool? get adult;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'genre_ids')
  List<int>? get genreIds;
  @override
  @JsonKey(name: 'popularity')
  double? get popularity;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'video')
  bool? get video;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$MovieItemImplCopyWith<_$MovieItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

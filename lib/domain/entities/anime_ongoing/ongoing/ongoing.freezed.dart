// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ongoing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ongoing _$OngoingFromJson(Map<String, dynamic> json) {
  return _Ongoing.fromJson(json);
}

/// @nodoc
mixin _$Ongoing {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OngoingCopyWith<Ongoing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OngoingCopyWith<$Res> {
  factory $OngoingCopyWith(Ongoing value, $Res Function(Ongoing) then) =
      _$OngoingCopyWithImpl<$Res, Ongoing>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? thumbnail,
      String? url,
      String? episode});
}

/// @nodoc
class _$OngoingCopyWithImpl<$Res, $Val extends Ongoing>
    implements $OngoingCopyWith<$Res> {
  _$OngoingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? url = freezed,
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OngoingImplCopyWith<$Res> implements $OngoingCopyWith<$Res> {
  factory _$$OngoingImplCopyWith(
          _$OngoingImpl value, $Res Function(_$OngoingImpl) then) =
      __$$OngoingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? thumbnail,
      String? url,
      String? episode});
}

/// @nodoc
class __$$OngoingImplCopyWithImpl<$Res>
    extends _$OngoingCopyWithImpl<$Res, _$OngoingImpl>
    implements _$$OngoingImplCopyWith<$Res> {
  __$$OngoingImplCopyWithImpl(
      _$OngoingImpl _value, $Res Function(_$OngoingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? url = freezed,
    Object? episode = freezed,
  }) {
    return _then(_$OngoingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OngoingImpl with DiagnosticableTreeMixin implements _Ongoing {
  const _$OngoingImpl(
      {this.id, this.title, this.thumbnail, this.url, this.episode});

  factory _$OngoingImpl.fromJson(Map<String, dynamic> json) =>
      _$$OngoingImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? thumbnail;
  @override
  final String? url;
  @override
  final String? episode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Ongoing(id: $id, title: $title, thumbnail: $thumbnail, url: $url, episode: $episode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Ongoing'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('episode', episode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OngoingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.episode, episode) || other.episode == episode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, thumbnail, url, episode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OngoingImplCopyWith<_$OngoingImpl> get copyWith =>
      __$$OngoingImplCopyWithImpl<_$OngoingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OngoingImplToJson(
      this,
    );
  }
}

abstract class _Ongoing implements Ongoing {
  const factory _Ongoing(
      {final String? id,
      final String? title,
      final String? thumbnail,
      final String? url,
      final String? episode}) = _$OngoingImpl;

  factory _Ongoing.fromJson(Map<String, dynamic> json) = _$OngoingImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get thumbnail;
  @override
  String? get url;
  @override
  String? get episode;
  @override
  @JsonKey(ignore: true)
  _$$OngoingImplCopyWith<_$OngoingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

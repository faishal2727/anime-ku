// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSearch _$DataSearchFromJson(Map<String, dynamic> json) {
  return _DataSearch.fromJson(json);
}

/// @nodoc
mixin _$DataSearch {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSearchCopyWith<DataSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSearchCopyWith<$Res> {
  factory $DataSearchCopyWith(
          DataSearch value, $Res Function(DataSearch) then) =
      _$DataSearchCopyWithImpl<$Res, DataSearch>;
  @useResult
  $Res call({String? id, String? title, String? thumbnail, String? url});
}

/// @nodoc
class _$DataSearchCopyWithImpl<$Res, $Val extends DataSearch>
    implements $DataSearchCopyWith<$Res> {
  _$DataSearchCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSearchImplCopyWith<$Res>
    implements $DataSearchCopyWith<$Res> {
  factory _$$DataSearchImplCopyWith(
          _$DataSearchImpl value, $Res Function(_$DataSearchImpl) then) =
      __$$DataSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? thumbnail, String? url});
}

/// @nodoc
class __$$DataSearchImplCopyWithImpl<$Res>
    extends _$DataSearchCopyWithImpl<$Res, _$DataSearchImpl>
    implements _$$DataSearchImplCopyWith<$Res> {
  __$$DataSearchImplCopyWithImpl(
      _$DataSearchImpl _value, $Res Function(_$DataSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? url = freezed,
  }) {
    return _then(_$DataSearchImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSearchImpl with DiagnosticableTreeMixin implements _DataSearch {
  const _$DataSearchImpl({this.id, this.title, this.thumbnail, this.url});

  factory _$DataSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSearchImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? thumbnail;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataSearch(id: $id, title: $title, thumbnail: $thumbnail, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataSearch'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('thumbnail', thumbnail))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSearchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSearchImplCopyWith<_$DataSearchImpl> get copyWith =>
      __$$DataSearchImplCopyWithImpl<_$DataSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSearchImplToJson(
      this,
    );
  }
}

abstract class _DataSearch implements DataSearch {
  const factory _DataSearch(
      {final String? id,
      final String? title,
      final String? thumbnail,
      final String? url}) = _$DataSearchImpl;

  factory _DataSearch.fromJson(Map<String, dynamic> json) =
      _$DataSearchImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get thumbnail;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$DataSearchImplCopyWith<_$DataSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

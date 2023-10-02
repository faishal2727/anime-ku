// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_by_genere.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseByGenere _$ResponseByGenereFromJson(Map<String, dynamic> json) {
  return _ResponseByGenere.fromJson(json);
}

/// @nodoc
mixin _$ResponseByGenere {
  int? get code => throw _privateConstructorUsedError;
  List<AnimeByGenere>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseByGenereCopyWith<ResponseByGenere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseByGenereCopyWith<$Res> {
  factory $ResponseByGenereCopyWith(
          ResponseByGenere value, $Res Function(ResponseByGenere) then) =
      _$ResponseByGenereCopyWithImpl<$Res, ResponseByGenere>;
  @useResult
  $Res call({int? code, List<AnimeByGenere>? data});
}

/// @nodoc
class _$ResponseByGenereCopyWithImpl<$Res, $Val extends ResponseByGenere>
    implements $ResponseByGenereCopyWith<$Res> {
  _$ResponseByGenereCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeByGenere>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseByGenereImplCopyWith<$Res>
    implements $ResponseByGenereCopyWith<$Res> {
  factory _$$ResponseByGenereImplCopyWith(_$ResponseByGenereImpl value,
          $Res Function(_$ResponseByGenereImpl) then) =
      __$$ResponseByGenereImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, List<AnimeByGenere>? data});
}

/// @nodoc
class __$$ResponseByGenereImplCopyWithImpl<$Res>
    extends _$ResponseByGenereCopyWithImpl<$Res, _$ResponseByGenereImpl>
    implements _$$ResponseByGenereImplCopyWith<$Res> {
  __$$ResponseByGenereImplCopyWithImpl(_$ResponseByGenereImpl _value,
      $Res Function(_$ResponseByGenereImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseByGenereImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AnimeByGenere>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseByGenereImpl implements _ResponseByGenere {
  const _$ResponseByGenereImpl({this.code, final List<AnimeByGenere>? data})
      : _data = data;

  factory _$ResponseByGenereImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseByGenereImplFromJson(json);

  @override
  final int? code;
  final List<AnimeByGenere>? _data;
  @override
  List<AnimeByGenere>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseByGenere(code: $code, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseByGenereImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseByGenereImplCopyWith<_$ResponseByGenereImpl> get copyWith =>
      __$$ResponseByGenereImplCopyWithImpl<_$ResponseByGenereImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseByGenereImplToJson(
      this,
    );
  }
}

abstract class _ResponseByGenere implements ResponseByGenere {
  const factory _ResponseByGenere(
      {final int? code,
      final List<AnimeByGenere>? data}) = _$ResponseByGenereImpl;

  factory _ResponseByGenere.fromJson(Map<String, dynamic> json) =
      _$ResponseByGenereImpl.fromJson;

  @override
  int? get code;
  @override
  List<AnimeByGenere>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseByGenereImplCopyWith<_$ResponseByGenereImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

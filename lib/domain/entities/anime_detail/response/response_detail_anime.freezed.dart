// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_detail_anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDetailAnime _$ResponseDetailAnimeFromJson(Map<String, dynamic> json) {
  return _ResponseDetailAnime.fromJson(json);
}

/// @nodoc
mixin _$ResponseDetailAnime {
  int? get code => throw _privateConstructorUsedError;
  DataDetail? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDetailAnimeCopyWith<ResponseDetailAnime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDetailAnimeCopyWith<$Res> {
  factory $ResponseDetailAnimeCopyWith(
          ResponseDetailAnime value, $Res Function(ResponseDetailAnime) then) =
      _$ResponseDetailAnimeCopyWithImpl<$Res, ResponseDetailAnime>;
  @useResult
  $Res call({int? code, DataDetail? data});

  $DataDetailCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseDetailAnimeCopyWithImpl<$Res, $Val extends ResponseDetailAnime>
    implements $ResponseDetailAnimeCopyWith<$Res> {
  _$ResponseDetailAnimeCopyWithImpl(this._value, this._then);

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
              as DataDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDetailCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDetailCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDetailAnimeImplCopyWith<$Res>
    implements $ResponseDetailAnimeCopyWith<$Res> {
  factory _$$ResponseDetailAnimeImplCopyWith(_$ResponseDetailAnimeImpl value,
          $Res Function(_$ResponseDetailAnimeImpl) then) =
      __$$ResponseDetailAnimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, DataDetail? data});

  @override
  $DataDetailCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseDetailAnimeImplCopyWithImpl<$Res>
    extends _$ResponseDetailAnimeCopyWithImpl<$Res, _$ResponseDetailAnimeImpl>
    implements _$$ResponseDetailAnimeImplCopyWith<$Res> {
  __$$ResponseDetailAnimeImplCopyWithImpl(_$ResponseDetailAnimeImpl _value,
      $Res Function(_$ResponseDetailAnimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDetailAnimeImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDetailAnimeImpl
    with DiagnosticableTreeMixin
    implements _ResponseDetailAnime {
  const _$ResponseDetailAnimeImpl({this.code, this.data});

  factory _$ResponseDetailAnimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDetailAnimeImplFromJson(json);

  @override
  final int? code;
  @override
  final DataDetail? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseDetailAnime(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseDetailAnime'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDetailAnimeImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDetailAnimeImplCopyWith<_$ResponseDetailAnimeImpl> get copyWith =>
      __$$ResponseDetailAnimeImplCopyWithImpl<_$ResponseDetailAnimeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDetailAnimeImplToJson(
      this,
    );
  }
}

abstract class _ResponseDetailAnime implements ResponseDetailAnime {
  const factory _ResponseDetailAnime(
      {final int? code, final DataDetail? data}) = _$ResponseDetailAnimeImpl;

  factory _ResponseDetailAnime.fromJson(Map<String, dynamic> json) =
      _$ResponseDetailAnimeImpl.fromJson;

  @override
  int? get code;
  @override
  DataDetail? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDetailAnimeImplCopyWith<_$ResponseDetailAnimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_anime_ongoing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseAnimeOngoing _$ResponseAnimeOngoingFromJson(Map<String, dynamic> json) {
  return _ResponseAnimeOngoing.fromJson(json);
}

/// @nodoc
mixin _$ResponseAnimeOngoing {
  int? get code => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseAnimeOngoingCopyWith<ResponseAnimeOngoing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseAnimeOngoingCopyWith<$Res> {
  factory $ResponseAnimeOngoingCopyWith(ResponseAnimeOngoing value,
          $Res Function(ResponseAnimeOngoing) then) =
      _$ResponseAnimeOngoingCopyWithImpl<$Res, ResponseAnimeOngoing>;
  @useResult
  $Res call({int? code, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseAnimeOngoingCopyWithImpl<$Res,
        $Val extends ResponseAnimeOngoing>
    implements $ResponseAnimeOngoingCopyWith<$Res> {
  _$ResponseAnimeOngoingCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseAnimeOngoingImplCopyWith<$Res>
    implements $ResponseAnimeOngoingCopyWith<$Res> {
  factory _$$ResponseAnimeOngoingImplCopyWith(_$ResponseAnimeOngoingImpl value,
          $Res Function(_$ResponseAnimeOngoingImpl) then) =
      __$$ResponseAnimeOngoingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseAnimeOngoingImplCopyWithImpl<$Res>
    extends _$ResponseAnimeOngoingCopyWithImpl<$Res, _$ResponseAnimeOngoingImpl>
    implements _$$ResponseAnimeOngoingImplCopyWith<$Res> {
  __$$ResponseAnimeOngoingImplCopyWithImpl(_$ResponseAnimeOngoingImpl _value,
      $Res Function(_$ResponseAnimeOngoingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseAnimeOngoingImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseAnimeOngoingImpl
    with DiagnosticableTreeMixin
    implements _ResponseAnimeOngoing {
  const _$ResponseAnimeOngoingImpl({this.code, this.data});

  factory _$ResponseAnimeOngoingImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseAnimeOngoingImplFromJson(json);

  @override
  final int? code;
  @override
  final Data? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseAnimeOngoing(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseAnimeOngoing'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseAnimeOngoingImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseAnimeOngoingImplCopyWith<_$ResponseAnimeOngoingImpl>
      get copyWith =>
          __$$ResponseAnimeOngoingImplCopyWithImpl<_$ResponseAnimeOngoingImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseAnimeOngoingImplToJson(
      this,
    );
  }
}

abstract class _ResponseAnimeOngoing implements ResponseAnimeOngoing {
  const factory _ResponseAnimeOngoing({final int? code, final Data? data}) =
      _$ResponseAnimeOngoingImpl;

  factory _ResponseAnimeOngoing.fromJson(Map<String, dynamic> json) =
      _$ResponseAnimeOngoingImpl.fromJson;

  @override
  int? get code;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseAnimeOngoingImplCopyWith<_$ResponseAnimeOngoingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

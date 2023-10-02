// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseGenre _$ResponseGenreFromJson(Map<String, dynamic> json) {
  return _ResponseGenre.fromJson(json);
}

/// @nodoc
mixin _$ResponseGenre {
  int? get code => throw _privateConstructorUsedError;
  List<String>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseGenreCopyWith<ResponseGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseGenreCopyWith<$Res> {
  factory $ResponseGenreCopyWith(
          ResponseGenre value, $Res Function(ResponseGenre) then) =
      _$ResponseGenreCopyWithImpl<$Res, ResponseGenre>;
  @useResult
  $Res call({int? code, List<String>? data});
}

/// @nodoc
class _$ResponseGenreCopyWithImpl<$Res, $Val extends ResponseGenre>
    implements $ResponseGenreCopyWith<$Res> {
  _$ResponseGenreCopyWithImpl(this._value, this._then);

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
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseGenreImplCopyWith<$Res>
    implements $ResponseGenreCopyWith<$Res> {
  factory _$$ResponseGenreImplCopyWith(
          _$ResponseGenreImpl value, $Res Function(_$ResponseGenreImpl) then) =
      __$$ResponseGenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, List<String>? data});
}

/// @nodoc
class __$$ResponseGenreImplCopyWithImpl<$Res>
    extends _$ResponseGenreCopyWithImpl<$Res, _$ResponseGenreImpl>
    implements _$$ResponseGenreImplCopyWith<$Res> {
  __$$ResponseGenreImplCopyWithImpl(
      _$ResponseGenreImpl _value, $Res Function(_$ResponseGenreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseGenreImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseGenreImpl
    with DiagnosticableTreeMixin
    implements _ResponseGenre {
  const _$ResponseGenreImpl({this.code, final List<String>? data})
      : _data = data;

  factory _$ResponseGenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseGenreImplFromJson(json);

  @override
  final int? code;
  final List<String>? _data;
  @override
  List<String>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseGenre(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseGenre'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseGenreImpl &&
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
  _$$ResponseGenreImplCopyWith<_$ResponseGenreImpl> get copyWith =>
      __$$ResponseGenreImplCopyWithImpl<_$ResponseGenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseGenreImplToJson(
      this,
    );
  }
}

abstract class _ResponseGenre implements ResponseGenre {
  const factory _ResponseGenre({final int? code, final List<String>? data}) =
      _$ResponseGenreImpl;

  factory _ResponseGenre.fromJson(Map<String, dynamic> json) =
      _$ResponseGenreImpl.fromJson;

  @override
  int? get code;
  @override
  List<String>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseGenreImplCopyWith<_$ResponseGenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

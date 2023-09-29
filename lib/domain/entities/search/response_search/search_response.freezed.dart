// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseSearch _$ResponseSearchFromJson(Map<String, dynamic> json) {
  return _ResponseSearch.fromJson(json);
}

/// @nodoc
mixin _$ResponseSearch {
  int? get code => throw _privateConstructorUsedError;
  List<DataSearch>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseSearchCopyWith<ResponseSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSearchCopyWith<$Res> {
  factory $ResponseSearchCopyWith(
          ResponseSearch value, $Res Function(ResponseSearch) then) =
      _$ResponseSearchCopyWithImpl<$Res, ResponseSearch>;
  @useResult
  $Res call({int? code, List<DataSearch>? data});
}

/// @nodoc
class _$ResponseSearchCopyWithImpl<$Res, $Val extends ResponseSearch>
    implements $ResponseSearchCopyWith<$Res> {
  _$ResponseSearchCopyWithImpl(this._value, this._then);

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
              as List<DataSearch>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseSearchImplCopyWith<$Res>
    implements $ResponseSearchCopyWith<$Res> {
  factory _$$ResponseSearchImplCopyWith(_$ResponseSearchImpl value,
          $Res Function(_$ResponseSearchImpl) then) =
      __$$ResponseSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, List<DataSearch>? data});
}

/// @nodoc
class __$$ResponseSearchImplCopyWithImpl<$Res>
    extends _$ResponseSearchCopyWithImpl<$Res, _$ResponseSearchImpl>
    implements _$$ResponseSearchImplCopyWith<$Res> {
  __$$ResponseSearchImplCopyWithImpl(
      _$ResponseSearchImpl _value, $Res Function(_$ResponseSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseSearchImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataSearch>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseSearchImpl
    with DiagnosticableTreeMixin
    implements _ResponseSearch {
  const _$ResponseSearchImpl({this.code, final List<DataSearch>? data})
      : _data = data;

  factory _$ResponseSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSearchImplFromJson(json);

  @override
  final int? code;
  final List<DataSearch>? _data;
  @override
  List<DataSearch>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseSearch(code: $code, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResponseSearch'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSearchImpl &&
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
  _$$ResponseSearchImplCopyWith<_$ResponseSearchImpl> get copyWith =>
      __$$ResponseSearchImplCopyWithImpl<_$ResponseSearchImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSearchImplToJson(
      this,
    );
  }
}

abstract class _ResponseSearch implements ResponseSearch {
  const factory _ResponseSearch(
      {final int? code, final List<DataSearch>? data}) = _$ResponseSearchImpl;

  factory _ResponseSearch.fromJson(Map<String, dynamic> json) =
      _$ResponseSearchImpl.fromJson;

  @override
  int? get code;
  @override
  List<DataSearch>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseSearchImplCopyWith<_$ResponseSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

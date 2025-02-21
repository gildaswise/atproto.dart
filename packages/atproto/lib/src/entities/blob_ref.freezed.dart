// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blob_ref.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlobRef _$BlobRefFromJson(Map<String, dynamic> json) {
  return _BlobRef.fromJson(json);
}

/// @nodoc
mixin _$BlobRef {
  /// The reference link to the blob data.
  @JsonKey(name: '\$link')
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlobRefCopyWith<BlobRef> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlobRefCopyWith<$Res> {
  factory $BlobRefCopyWith(BlobRef value, $Res Function(BlobRef) then) =
      _$BlobRefCopyWithImpl<$Res, BlobRef>;
  @useResult
  $Res call({@JsonKey(name: '\$link') String link});
}

/// @nodoc
class _$BlobRefCopyWithImpl<$Res, $Val extends BlobRef>
    implements $BlobRefCopyWith<$Res> {
  _$BlobRefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlobRefCopyWith<$Res> implements $BlobRefCopyWith<$Res> {
  factory _$$_BlobRefCopyWith(
          _$_BlobRef value, $Res Function(_$_BlobRef) then) =
      __$$_BlobRefCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '\$link') String link});
}

/// @nodoc
class __$$_BlobRefCopyWithImpl<$Res>
    extends _$BlobRefCopyWithImpl<$Res, _$_BlobRef>
    implements _$$_BlobRefCopyWith<$Res> {
  __$$_BlobRefCopyWithImpl(_$_BlobRef _value, $Res Function(_$_BlobRef) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$_BlobRef(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlobRef implements _BlobRef {
  const _$_BlobRef({@JsonKey(name: '\$link') required this.link});

  factory _$_BlobRef.fromJson(Map<String, dynamic> json) =>
      _$$_BlobRefFromJson(json);

  /// The reference link to the blob data.
  @override
  @JsonKey(name: '\$link')
  final String link;

  @override
  String toString() {
    return 'BlobRef(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlobRef &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlobRefCopyWith<_$_BlobRef> get copyWith =>
      __$$_BlobRefCopyWithImpl<_$_BlobRef>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlobRefToJson(
      this,
    );
  }
}

abstract class _BlobRef implements BlobRef {
  const factory _BlobRef(
      {@JsonKey(name: '\$link') required final String link}) = _$_BlobRef;

  factory _BlobRef.fromJson(Map<String, dynamic> json) = _$_BlobRef.fromJson;

  @override

  /// The reference link to the blob data.
  @JsonKey(name: '\$link')
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$_BlobRefCopyWith<_$_BlobRef> get copyWith =>
      throw _privateConstructorUsedError;
}

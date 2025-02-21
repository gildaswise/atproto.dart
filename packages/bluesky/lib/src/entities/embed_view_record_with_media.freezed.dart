// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embed_view_record_with_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmbedViewRecordWithMedia _$EmbedViewRecordWithMediaFromJson(
    Map<String, dynamic> json) {
  return _EmbedViewRecordWithMedia.fromJson(json);
}

/// @nodoc
mixin _$EmbedViewRecordWithMedia {
  /// Specifies the type of record.
  @typeKey
  String get type => throw _privateConstructorUsedError;

  /// Represents the record of the embedded view.
  EmbedViewRecord get record => throw _privateConstructorUsedError;

  /// Represents the media attached to the view.
  @embedViewMediaConverter
  EmbedViewMedia get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedViewRecordWithMediaCopyWith<EmbedViewRecordWithMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedViewRecordWithMediaCopyWith<$Res> {
  factory $EmbedViewRecordWithMediaCopyWith(EmbedViewRecordWithMedia value,
          $Res Function(EmbedViewRecordWithMedia) then) =
      _$EmbedViewRecordWithMediaCopyWithImpl<$Res, EmbedViewRecordWithMedia>;
  @useResult
  $Res call(
      {@typeKey String type,
      EmbedViewRecord record,
      @embedViewMediaConverter EmbedViewMedia media});

  $EmbedViewRecordCopyWith<$Res> get record;
  $EmbedViewMediaCopyWith<$Res> get media;
}

/// @nodoc
class _$EmbedViewRecordWithMediaCopyWithImpl<$Res,
        $Val extends EmbedViewRecordWithMedia>
    implements $EmbedViewRecordWithMediaCopyWith<$Res> {
  _$EmbedViewRecordWithMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? record = null,
    Object? media = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as EmbedViewRecord,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as EmbedViewMedia,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmbedViewRecordCopyWith<$Res> get record {
    return $EmbedViewRecordCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmbedViewMediaCopyWith<$Res> get media {
    return $EmbedViewMediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmbedViewRecordWithMediaCopyWith<$Res>
    implements $EmbedViewRecordWithMediaCopyWith<$Res> {
  factory _$$_EmbedViewRecordWithMediaCopyWith(
          _$_EmbedViewRecordWithMedia value,
          $Res Function(_$_EmbedViewRecordWithMedia) then) =
      __$$_EmbedViewRecordWithMediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@typeKey String type,
      EmbedViewRecord record,
      @embedViewMediaConverter EmbedViewMedia media});

  @override
  $EmbedViewRecordCopyWith<$Res> get record;
  @override
  $EmbedViewMediaCopyWith<$Res> get media;
}

/// @nodoc
class __$$_EmbedViewRecordWithMediaCopyWithImpl<$Res>
    extends _$EmbedViewRecordWithMediaCopyWithImpl<$Res,
        _$_EmbedViewRecordWithMedia>
    implements _$$_EmbedViewRecordWithMediaCopyWith<$Res> {
  __$$_EmbedViewRecordWithMediaCopyWithImpl(_$_EmbedViewRecordWithMedia _value,
      $Res Function(_$_EmbedViewRecordWithMedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? record = null,
    Object? media = null,
  }) {
    return _then(_$_EmbedViewRecordWithMedia(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as EmbedViewRecord,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as EmbedViewMedia,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbedViewRecordWithMedia implements _EmbedViewRecordWithMedia {
  const _$_EmbedViewRecordWithMedia(
      {@typeKey required this.type,
      required this.record,
      @embedViewMediaConverter required this.media});

  factory _$_EmbedViewRecordWithMedia.fromJson(Map<String, dynamic> json) =>
      _$$_EmbedViewRecordWithMediaFromJson(json);

  /// Specifies the type of record.
  @override
  @typeKey
  final String type;

  /// Represents the record of the embedded view.
  @override
  final EmbedViewRecord record;

  /// Represents the media attached to the view.
  @override
  @embedViewMediaConverter
  final EmbedViewMedia media;

  @override
  String toString() {
    return 'EmbedViewRecordWithMedia(type: $type, record: $record, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbedViewRecordWithMedia &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, record, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmbedViewRecordWithMediaCopyWith<_$_EmbedViewRecordWithMedia>
      get copyWith => __$$_EmbedViewRecordWithMediaCopyWithImpl<
          _$_EmbedViewRecordWithMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbedViewRecordWithMediaToJson(
      this,
    );
  }
}

abstract class _EmbedViewRecordWithMedia implements EmbedViewRecordWithMedia {
  const factory _EmbedViewRecordWithMedia(
          {@typeKey required final String type,
          required final EmbedViewRecord record,
          @embedViewMediaConverter required final EmbedViewMedia media}) =
      _$_EmbedViewRecordWithMedia;

  factory _EmbedViewRecordWithMedia.fromJson(Map<String, dynamic> json) =
      _$_EmbedViewRecordWithMedia.fromJson;

  @override

  /// Specifies the type of record.
  @typeKey
  String get type;
  @override

  /// Represents the record of the embedded view.
  EmbedViewRecord get record;
  @override

  /// Represents the media attached to the view.
  @embedViewMediaConverter
  EmbedViewMedia get media;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedViewRecordWithMediaCopyWith<_$_EmbedViewRecordWithMedia>
      get copyWith => throw _privateConstructorUsedError;
}

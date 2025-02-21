// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostParam _$PostParamFromJson(Map<String, dynamic> json) {
  return _PostParam.fromJson(json);
}

/// @nodoc
mixin _$PostParam {
  String get text => throw _privateConstructorUsedError;
  ReplyRef? get reply => throw _privateConstructorUsedError;
  List<Facet>? get facets => throw _privateConstructorUsedError;
  @embedConverter
  Embed? get embed => throw _privateConstructorUsedError;
  List<String>? get languageTags => throw _privateConstructorUsedError;
  @labelsConverter
  Labels? get labels => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get unspecced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostParamCopyWith<PostParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostParamCopyWith<$Res> {
  factory $PostParamCopyWith(PostParam value, $Res Function(PostParam) then) =
      _$PostParamCopyWithImpl<$Res, PostParam>;
  @useResult
  $Res call(
      {String text,
      ReplyRef? reply,
      List<Facet>? facets,
      @embedConverter Embed? embed,
      List<String>? languageTags,
      @labelsConverter Labels? labels,
      DateTime? createdAt,
      Map<String, dynamic> unspecced});

  $ReplyRefCopyWith<$Res>? get reply;
  $EmbedCopyWith<$Res>? get embed;
  $LabelsCopyWith<$Res>? get labels;
}

/// @nodoc
class _$PostParamCopyWithImpl<$Res, $Val extends PostParam>
    implements $PostParamCopyWith<$Res> {
  _$PostParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? reply = freezed,
    Object? facets = freezed,
    Object? embed = freezed,
    Object? languageTags = freezed,
    Object? labels = freezed,
    Object? createdAt = freezed,
    Object? unspecced = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as ReplyRef?,
      facets: freezed == facets
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as List<Facet>?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as Embed?,
      languageTags: freezed == languageTags
          ? _value.languageTags
          : languageTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Labels?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unspecced: null == unspecced
          ? _value.unspecced
          : unspecced // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReplyRefCopyWith<$Res>? get reply {
    if (_value.reply == null) {
      return null;
    }

    return $ReplyRefCopyWith<$Res>(_value.reply!, (value) {
      return _then(_value.copyWith(reply: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EmbedCopyWith<$Res>? get embed {
    if (_value.embed == null) {
      return null;
    }

    return $EmbedCopyWith<$Res>(_value.embed!, (value) {
      return _then(_value.copyWith(embed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelsCopyWith<$Res>? get labels {
    if (_value.labels == null) {
      return null;
    }

    return $LabelsCopyWith<$Res>(_value.labels!, (value) {
      return _then(_value.copyWith(labels: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostParamCopyWith<$Res> implements $PostParamCopyWith<$Res> {
  factory _$$_PostParamCopyWith(
          _$_PostParam value, $Res Function(_$_PostParam) then) =
      __$$_PostParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      ReplyRef? reply,
      List<Facet>? facets,
      @embedConverter Embed? embed,
      List<String>? languageTags,
      @labelsConverter Labels? labels,
      DateTime? createdAt,
      Map<String, dynamic> unspecced});

  @override
  $ReplyRefCopyWith<$Res>? get reply;
  @override
  $EmbedCopyWith<$Res>? get embed;
  @override
  $LabelsCopyWith<$Res>? get labels;
}

/// @nodoc
class __$$_PostParamCopyWithImpl<$Res>
    extends _$PostParamCopyWithImpl<$Res, _$_PostParam>
    implements _$$_PostParamCopyWith<$Res> {
  __$$_PostParamCopyWithImpl(
      _$_PostParam _value, $Res Function(_$_PostParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? reply = freezed,
    Object? facets = freezed,
    Object? embed = freezed,
    Object? languageTags = freezed,
    Object? labels = freezed,
    Object? createdAt = freezed,
    Object? unspecced = null,
  }) {
    return _then(_$_PostParam(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as ReplyRef?,
      facets: freezed == facets
          ? _value._facets
          : facets // ignore: cast_nullable_to_non_nullable
              as List<Facet>?,
      embed: freezed == embed
          ? _value.embed
          : embed // ignore: cast_nullable_to_non_nullable
              as Embed?,
      languageTags: freezed == languageTags
          ? _value._languageTags
          : languageTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as Labels?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unspecced: null == unspecced
          ? _value._unspecced
          : unspecced // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _$_PostParam implements _PostParam {
  const _$_PostParam(
      {required this.text,
      this.reply,
      final List<Facet>? facets,
      @embedConverter this.embed,
      final List<String>? languageTags,
      @labelsConverter this.labels,
      this.createdAt,
      final Map<String, dynamic> unspecced = emptyJson})
      : _facets = facets,
        _languageTags = languageTags,
        _unspecced = unspecced;

  factory _$_PostParam.fromJson(Map<String, dynamic> json) =>
      _$$_PostParamFromJson(json);

  @override
  final String text;
  @override
  final ReplyRef? reply;
  final List<Facet>? _facets;
  @override
  List<Facet>? get facets {
    final value = _facets;
    if (value == null) return null;
    if (_facets is EqualUnmodifiableListView) return _facets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @embedConverter
  final Embed? embed;
  final List<String>? _languageTags;
  @override
  List<String>? get languageTags {
    final value = _languageTags;
    if (value == null) return null;
    if (_languageTags is EqualUnmodifiableListView) return _languageTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @labelsConverter
  final Labels? labels;
  @override
  final DateTime? createdAt;
  final Map<String, dynamic> _unspecced;
  @override
  @JsonKey()
  Map<String, dynamic> get unspecced {
    if (_unspecced is EqualUnmodifiableMapView) return _unspecced;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_unspecced);
  }

  @override
  String toString() {
    return 'PostParam(text: $text, reply: $reply, facets: $facets, embed: $embed, languageTags: $languageTags, labels: $labels, createdAt: $createdAt, unspecced: $unspecced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostParam &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            const DeepCollectionEquality().equals(other._facets, _facets) &&
            (identical(other.embed, embed) || other.embed == embed) &&
            const DeepCollectionEquality()
                .equals(other._languageTags, _languageTags) &&
            (identical(other.labels, labels) || other.labels == labels) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._unspecced, _unspecced));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      reply,
      const DeepCollectionEquality().hash(_facets),
      embed,
      const DeepCollectionEquality().hash(_languageTags),
      labels,
      createdAt,
      const DeepCollectionEquality().hash(_unspecced));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostParamCopyWith<_$_PostParam> get copyWith =>
      __$$_PostParamCopyWithImpl<_$_PostParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostParamToJson(
      this,
    );
  }
}

abstract class _PostParam implements PostParam {
  const factory _PostParam(
      {required final String text,
      final ReplyRef? reply,
      final List<Facet>? facets,
      @embedConverter final Embed? embed,
      final List<String>? languageTags,
      @labelsConverter final Labels? labels,
      final DateTime? createdAt,
      final Map<String, dynamic> unspecced}) = _$_PostParam;

  factory _PostParam.fromJson(Map<String, dynamic> json) =
      _$_PostParam.fromJson;

  @override
  String get text;
  @override
  ReplyRef? get reply;
  @override
  List<Facet>? get facets;
  @override
  @embedConverter
  Embed? get embed;
  @override
  List<String>? get languageTags;
  @override
  @labelsConverter
  Labels? get labels;
  @override
  DateTime? get createdAt;
  @override
  Map<String, dynamic> get unspecced;
  @override
  @JsonKey(ignore: true)
  _$$_PostParamCopyWith<_$_PostParam> get copyWith =>
      throw _privateConstructorUsedError;
}

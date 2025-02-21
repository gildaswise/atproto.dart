// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'post_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostParam _$$_PostParamFromJson(Map json) => $checkedCreate(
      r'_$_PostParam',
      json,
      ($checkedConvert) {
        final val = _$_PostParam(
          text: $checkedConvert('text', (v) => v as String),
          reply: $checkedConvert(
              'reply',
              (v) => v == null
                  ? null
                  : ReplyRef.fromJson(Map<String, Object?>.from(v as Map))),
          facets: $checkedConvert(
              'facets',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Facet.fromJson(Map<String, Object?>.from(e as Map)))
                  .toList()),
          embed: $checkedConvert(
              'embed',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>, Embed>(
                  v, embedConverter.fromJson)),
          languageTags: $checkedConvert('languageTags',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          labels: $checkedConvert(
              'labels',
              (v) => _$JsonConverterFromJson<Map<String, dynamic>, Labels>(
                  v, labelsConverter.fromJson)),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          unspecced: $checkedConvert(
              'unspecced',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  ) ??
                  emptyJson),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PostParamToJson(_$_PostParam instance) {
  final val = <String, dynamic>{
    'text': instance.text,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reply', instance.reply?.toJson());
  writeNotNull('facets', instance.facets?.map((e) => e.toJson()).toList());
  writeNotNull(
      'embed',
      _$JsonConverterToJson<Map<String, dynamic>, Embed>(
          instance.embed, embedConverter.toJson));
  writeNotNull('languageTags', instance.languageTags);
  writeNotNull(
      'labels',
      _$JsonConverterToJson<Map<String, dynamic>, Labels>(
          instance.labels, labelsConverter.toJson));
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  val['unspecced'] = instance.unspecced;
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

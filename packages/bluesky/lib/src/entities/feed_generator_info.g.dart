// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'feed_generator_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedGeneratorInfo _$$_FeedGeneratorInfoFromJson(Map json) => $checkedCreate(
      r'_$_FeedGeneratorInfo',
      json,
      ($checkedConvert) {
        final val = _$_FeedGeneratorInfo(
          did: $checkedConvert('did', (v) => v as String),
          feeds: $checkedConvert(
              'feeds',
              (v) => (v as List<dynamic>)
                  .map((e) => GeneratorFeed.fromJson(
                      Map<String, Object?>.from(e as Map)))
                  .toList()),
          links: $checkedConvert(
              'links',
              (v) => v == null
                  ? null
                  : GeneratorLinks.fromJson(
                      Map<String, Object?>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_FeedGeneratorInfoToJson(
    _$_FeedGeneratorInfo instance) {
  final val = <String, dynamic>{
    'did': instance.did,
    'feeds': instance.feeds.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('links', instance.links?.toJson());
  return val;
}

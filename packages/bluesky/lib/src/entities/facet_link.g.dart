// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'facet_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FacetLink _$$_FacetLinkFromJson(Map json) => $checkedCreate(
      r'_$_FacetLink',
      json,
      ($checkedConvert) {
        final val = _$_FacetLink(
          type: $checkedConvert(
              r'$type', (v) => v as String? ?? appBskyRichtextFacetLink),
          uri: $checkedConvert('uri', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'type': r'$type'},
    );

Map<String, dynamic> _$$_FacetLinkToJson(_$_FacetLink instance) =>
    <String, dynamic>{
      r'$type': instance.type,
      'uri': instance.uri,
    };

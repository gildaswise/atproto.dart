// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🌎 Project imports:
import 'package:atproto/atproto.dart' as atp;
import 'package:atproto_core/atproto_core.dart' as core;

import '../bluesky_base_service.dart';
import '../entities/feeds_data.dart';

abstract class UnspeccedService {
  /// Returns the new instance of [UnspeccedService].
  factory UnspeccedService({
    required atp.ATProto atproto,
    required String service,
    required core.ClientContext context,
    final core.GetClient? mockedGetClient,
    final core.PostClient? mockedPostClient,
  }) =>
      _UnspeccedService(
        atproto: atproto,
        service: service,
        context: context,
        mockedGetClient: mockedGetClient,
        mockedPostClient: mockedPostClient,
      );

  /// An unspecced view of globally popular items.
  ///
  /// ## Parameters
  ///
  /// - [limit]: Maximum number of search results. From 1 to 100.
  ///            The default is 50.
  ///
  /// - [cursor]: Cursor string returned from the last search.
  ///
  /// ## Lexicon
  ///
  /// - app.bsky.unspecced.getPopular
  ///
  /// ## Reference
  ///
  /// - https://github.com/bluesky-social/atproto/blob/main/lexicons/app/bsky/unspecced/getPopular.json
  Future<core.XRPCResponse<FeedsData>> findPopularFeeds({
    int? limit,
    String? cursor,
  });
}

class _UnspeccedService extends BlueskyBaseService implements UnspeccedService {
  /// Returns the new instance of [_UnspeccedService].
  _UnspeccedService({
    required super.atproto,
    required super.service,
    required super.context,
    super.mockedGetClient,
    super.mockedPostClient,
  }) : super(methodAuthority: 'unspecced.bsky.app');

  @override
  Future<atp.XRPCResponse<FeedsData>> findPopularFeeds({
    int? limit,
    String? cursor,
  }) async =>
      await super.get(
        'getPopular',
        parameters: {
          'limit': limit,
          'before': cursor,
        },
        to: FeedsData.fromJson,
      );
}

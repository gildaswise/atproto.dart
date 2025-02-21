// Copyright 2022 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// 🎯 Dart imports:
import 'dart:io';

// 📦 Package imports:
import 'package:atproto_core/atproto_core.dart' as core;
import 'package:atproto_test/atproto_test.dart' as atp_test;
import 'package:test/test.dart';

// 🌎 Project imports:
import 'package:atproto/src/entities/batch_action.dart';
import 'package:atproto/src/entities/blob_data.dart';
import 'package:atproto/src/entities/create_action.dart';
import 'package:atproto/src/entities/delete_action.dart';
import 'package:atproto/src/entities/record.dart';
import 'package:atproto/src/entities/records.dart';
import 'package:atproto/src/entities/repo_info.dart';
import 'package:atproto/src/entities/strong_ref.dart';
import 'package:atproto/src/entities/update_action.dart';
import 'package:atproto/src/repositories/repositories_service.dart';

void main() {
  group('.createRecord', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/create_record.json',
        ),
      );

      final response = await repositories.createRecord(
        collection: core.NSID.create('com.atproto', 'test'),
        record: {},
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<StrongRef>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.createRecord(
          collection: core.NSID.create('com.atproto', 'test'),
          record: {},
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.createRecord(
          collection: core.NSID.create('com.atproto', 'test'),
          record: {},
        ),
      );
    });
  });

  group('.deleteRecord', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/delete_record.json',
        ),
      );

      final response = await repositories.deleteRecord(
        uri: core.AtUri.parse('at://foo.com/com.example.foo/123'),
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<core.EmptyData>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.deleteRecord(
          uri: core.AtUri.parse('at://foo.com/com.example.foo/123'),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.deleteRecord(
          uri: core.AtUri.parse('at://foo.com/com.example.foo/123'),
        ),
      );
    });
  });

  group('.updateRecord', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/update_record.json',
        ),
      );

      final response = await repositories.updateRecord(
        uri: core.AtUri.parse('at://foo.com/com.example.foo/123'),
        record: {},
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<StrongRef>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.updateRecord(
          uri: core.AtUri.parse('at://foo.com/com.example.foo/123'),
          record: {},
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.updateRecord(
          uri: core.AtUri.parse('at://foo.com/com.example.foo/123'),
          record: {},
        ),
      );
    });
  });

  group('.findRepoInfo', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/repositories/data/find_repo_info.json',
        ),
      );

      final response = await repositories.findRepoInfo(
        repo: 'shinyakato.dev',
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<RepoInfo>());
    });

    test('as JSON', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/repositories/data/find_repo_info.json',
        ),
      );

      final response = await repositories.findRepoInfoAsJson(
        repo: 'shinyakato.dev',
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<Map<String, dynamic>>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.findRepoInfo(
          repo: 'shinyakato.dev',
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.findRepoInfo(
          repo: 'shinyakato.dev',
        ),
      );
    });
  });

  group('.findRecord', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/repositories/data/find_record.json',
        ),
      );

      final response = await repositories.findRecord(
        uri: core.AtUri.parse(
          'at://did:plc:iijrtk7ocored6zuziwmqq3c/app.bsky.feed.post/3juqjtr23dk2h',
        ),
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<Record>());
      expect(response.data.hasStrongRef, isTrue);
      expect(response.data.hasNotStrongRef, isFalse);

      final strongRef = response.data.toStrongRef();
      expect(strongRef, isA<StrongRef>());
      expect(strongRef.cid, response.data.cid);
      expect(strongRef.uri, response.data.uri);
    });

    test('as JSON', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/repositories/data/find_record.json',
        ),
      );

      final response = await repositories.findRecordAsJson(
        uri: core.AtUri.parse(
          'at://did:plc:iijrtk7ocored6zuziwmqq3c/app.bsky.feed.post/3juqjtr23dk2h',
        ),
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<Map<String, dynamic>>());
    });

    test('without cid', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/repositories/data/find_record_without_cid.json',
        ),
      );

      final response = await repositories.findRecord(
        uri: core.AtUri.parse(
          'at://did:plc:iijrtk7ocored6zuziwmqq3c/app.bsky.feed.post/3juqjtr23dk2h',
        ),
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<Record>());
      expect(response.data.hasStrongRef, isFalse);
      expect(response.data.hasNotStrongRef, isTrue);

      expect(() => response.data.toStrongRef(), throwsA(isA<StateError>()));
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.findRecord(
          uri: core.AtUri.parse(
            'at://did:plc:iijrtk7ocored6zuziwmqq3c/app.bsky.feed.post/3juqjtr23dk2h',
          ),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.findRecord(
          uri: core.AtUri.parse(
            'at://did:plc:iijrtk7ocored6zuziwmqq3c/app.bsky.feed.post/3juqjtr23dk2h',
          ),
        ),
      );
    });
  });

  group('.findRecords', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/repositories/data/find_records.json',
        ),
      );

      final response = await repositories.findRecords(
        repo: 'did:plc:iijrtk7ocored6zuziwmqq3c',
        collection: core.NSID.parse('app.bsky.feed.post'),
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<Records>());
    });

    test('as JSON', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/repositories/data/find_records.json',
        ),
      );

      final response = await repositories.findRecordsAsJson(
        repo: 'did:plc:iijrtk7ocored6zuziwmqq3c',
        collection: core.NSID.parse('app.bsky.feed.post'),
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<Map<String, dynamic>>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.findRecords(
          repo: 'did:plc:iijrtk7ocored6zuziwmqq3c',
          collection: core.NSID.parse('app.bsky.feed.post'),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedGetClient: atp_test.createMockedGetClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.findRecords(
          repo: 'did:plc:iijrtk7ocored6zuziwmqq3c',
          collection: core.NSID.parse('app.bsky.feed.post'),
        ),
      );
    });
  });

  group('.updateBulk', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/update_bulk.json',
        ),
      );

      final response = await repositories.updateBulk(actions: [
        BatchAction.create(
          data: CreateAction(
            collection: core.NSID.create('app.bsky.graph', 'like'),
            record: {},
            rkey: 'xxxxxx',
          ),
        ),
        BatchAction.update(
          data: UpdateAction(
            collection: core.NSID.create('app.bsky.graph', 'like'),
            record: {},
            rkey: 'xxxxxx',
          ),
        ),
        BatchAction.delete(
          data: DeleteAction(
            uri: core.AtUri.make(
              'shinyakato.dev',
              'app.bsky.graph.like',
              'xxxxxx',
            ),
          ),
        )
      ]);

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<core.EmptyData>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.updateBulk(actions: []),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.updateBulk(actions: []),
      );
    });
  });

  group('.createRecords', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/update_bulk.json',
        ),
      );

      final response = await repositories.createRecords(actions: [
        CreateAction(
          collection: core.NSID.create('app.bsky.graph', 'like'),
          record: {},
          rkey: 'xxxxxx',
        ),
      ]);

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<core.EmptyData>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.createRecords(actions: []),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.createRecords(actions: []),
      );
    });
  });

  group('.updateRecords', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/update_bulk.json',
        ),
      );

      final response = await repositories.updateRecords(actions: [
        UpdateAction(
          collection: core.NSID.create('app.bsky.graph', 'like'),
          rkey: 'xxxxxx',
          record: {},
        ),
      ]);

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<core.EmptyData>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.updateRecords(actions: []),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.updateRecords(actions: []),
      );
    });
  });

  group('.deleteRecords', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/update_bulk.json',
        ),
      );

      final response = await repositories.deleteRecords(uris: [
        core.AtUri.make(
          'shinyakato.dev',
          'app.bsky.graph.like',
          'xxxxxx',
        ),
        core.AtUri.make(
          'shinyakato.dev',
          'app.bsky.graph.like',
          'xxxxxx',
        ),
        core.AtUri.make(
          'shinyakato.dev',
          'app.bsky.graph.like',
          'xxxxxx',
        ),
      ]);

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<core.EmptyData>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.deleteRecords(uris: []),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.deleteRecords(uris: []),
      );
    });
  });

  group('.uploadBlob', () {
    test('normal case', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/repositories/data/upload_blob.json',
        ),
      );

      final response = await repositories.uploadBlob(
        File('./test/src/repositories/data/dash.png').readAsBytesSync(),
      );

      expect(response, isA<core.XRPCResponse>());
      expect(response.data, isA<BlobData>());
    });

    test('when unauthorized', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 401,
        ),
      );

      atp_test.expectUnauthorizedException(
        () async => await repositories.uploadBlob(
          File('./test/src/repositories/data/dash.png').readAsBytesSync(),
        ),
      );
    });

    test('when rate limit exceeded', () async {
      final repositories = RepositoriesService(
        did: 'test',
        protocol: core.Protocol.https,
        service: 'test',
        context: core.ClientContext(
          accessJwt: '1234',
          timeout: Duration.zero,
        ),
        mockedPostClient: atp_test.createMockedPostClient(
          'test/src/data/error.json',
          statusCode: 429,
        ),
      );

      atp_test.expectRateLimitExceededException(
        () async => await repositories.uploadBlob(
          File('./test/src/repositories/data/dash.png').readAsBytesSync(),
        ),
      );
    });
  });
}

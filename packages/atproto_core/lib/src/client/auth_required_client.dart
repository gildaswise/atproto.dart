// Copyright 2023 Shinya Kato. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:xrpc/xrpc.dart' as xrpc;

import 'client.dart';

class AuthRequiredClient implements Client {
  /// Returns the new instance of [AuthRequiredClient].
  const AuthRequiredClient(final String accessJwt) : _accessJwt = accessJwt;

  /// The JWT access token
  final String _accessJwt;

  @override
  Future<xrpc.XRPCResponse<T>> get<T>(
    final xrpc.NSID methodId, {
    required final String service,
    final Map<String, dynamic>? parameters,
    required final xrpc.To<T> to,
    required final Duration timeout,
    final xrpc.GetClient? getClient,
  }) async =>
      await xrpc.query(
        methodId,
        service: service,
        parameters: parameters,
        headers: {'Authorization': 'Bearer $_accessJwt'},
        to: to,
        timeout: timeout,
        getClient: getClient,
      );

  @override
  Future<xrpc.XRPCResponse<T>> post<T>(
    final xrpc.NSID methodId, {
    required final String service,
    required final dynamic body,
    final xrpc.To<T>? to,
    required final Duration timeout,
    final xrpc.PostClient? postClient,
  }) async =>
      await xrpc.procedure(
        methodId,
        service: service,
        headers: {'Authorization': 'Bearer $_accessJwt'},
        body: body,
        to: to,
        timeout: timeout,
        postClient: postClient,
      );
}

///
//  Generated code. Do not modify.
//  source: server.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'server.pb.dart' as $0;
export 'server.pb.dart';

class AddServiceClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/proto.AddService/add',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));
  static final _$mutiply = $grpc.ClientMethod<$0.Request, $0.Response>(
      '/proto.AddService/mutiply',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Response.fromBuffer(value));

  AddServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Response> add($0.Request request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$add, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Response> mutiply($0.Request request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$mutiply, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AddServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.AddService';

  AddServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Response>(
        'add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Response>(
        'mutiply',
        mutiply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Response value) => value.writeToBuffer()));
  }

  $async.Future<$0.Response> add_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return add(call, await request);
  }

  $async.Future<$0.Response> mutiply_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async {
    return mutiply(call, await request);
  }

  $async.Future<$0.Response> add($grpc.ServiceCall call, $0.Request request);
  $async.Future<$0.Response> mutiply(
      $grpc.ServiceCall call, $0.Request request);
}

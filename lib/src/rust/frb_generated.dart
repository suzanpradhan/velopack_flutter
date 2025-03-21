// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/velopack.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'frb_generated.io.dart'
    if (dart.library.js_interop) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class VelopackRustLib extends BaseEntrypoint<VelopackRustLibApi,
    VelopackRustLibApiImpl, VelopackRustLibWire> {
  @internal
  static final instance = VelopackRustLib._();

  VelopackRustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    VelopackRustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Initialize flutter_rust_bridge in mock mode.
  /// No libraries for FFI are loaded.
  static void initMock({
    required VelopackRustLibApi api,
  }) {
    instance.initMockImpl(
      api: api,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<VelopackRustLibApiImpl, VelopackRustLibWire>
      get apiImplConstructor => VelopackRustLibApiImpl.new;

  @override
  WireConstructor<VelopackRustLibWire> get wireConstructor =>
      VelopackRustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {
    await api.crateApiVelopackInitApp();
  }

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.9.0';

  @override
  int get rustContentHash => 869407356;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'velopack_flutter',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class VelopackRustLibApi extends BaseApi {
  Future<String> crateApiVelopackCurrentVersion();

  Future<void> crateApiVelopackInitApp();

  Future<bool> crateApiVelopackIsUpdateAvailable({required String url});

  Future<void> crateApiVelopackUpdateAndExit({required String url});

  Future<void> crateApiVelopackUpdateAndRestart({required String url});

  Future<void> crateApiVelopackWaitExitThenUpdate(
      {required String url, required bool silent, required bool restart});
}

class VelopackRustLibApiImpl extends VelopackRustLibApiImplPlatform
    implements VelopackRustLibApi {
  VelopackRustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<String> crateApiVelopackCurrentVersion() {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 1, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_String,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiVelopackCurrentVersionConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiVelopackCurrentVersionConstMeta =>
      const TaskConstMeta(
        debugName: "current_version",
        argNames: [],
      );

  @override
  Future<void> crateApiVelopackInitApp() {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 2, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiVelopackInitAppConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiVelopackInitAppConstMeta => const TaskConstMeta(
        debugName: "init_app",
        argNames: [],
      );

  @override
  Future<bool> crateApiVelopackIsUpdateAvailable({required String url}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(url, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 3, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_bool,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiVelopackIsUpdateAvailableConstMeta,
      argValues: [url],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiVelopackIsUpdateAvailableConstMeta =>
      const TaskConstMeta(
        debugName: "is_update_available",
        argNames: ["url"],
      );

  @override
  Future<void> crateApiVelopackUpdateAndExit({required String url}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(url, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 4, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiVelopackUpdateAndExitConstMeta,
      argValues: [url],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiVelopackUpdateAndExitConstMeta =>
      const TaskConstMeta(
        debugName: "update_and_exit",
        argNames: ["url"],
      );

  @override
  Future<void> crateApiVelopackUpdateAndRestart({required String url}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(url, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 5, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiVelopackUpdateAndRestartConstMeta,
      argValues: [url],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiVelopackUpdateAndRestartConstMeta =>
      const TaskConstMeta(
        debugName: "update_and_restart",
        argNames: ["url"],
      );

  @override
  Future<void> crateApiVelopackWaitExitThenUpdate(
      {required String url, required bool silent, required bool restart}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(url, serializer);
        sse_encode_bool(silent, serializer);
        sse_encode_bool(restart, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 6, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiVelopackWaitExitThenUpdateConstMeta,
      argValues: [url, silent, restart],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiVelopackWaitExitThenUpdateConstMeta =>
      const TaskConstMeta(
        debugName: "wait_exit_then_update",
        argNames: ["url", "silent", "restart"],
      );

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return AnyhowException(raw as String);
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  bool dco_decode_bool(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as bool;
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.message, serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }
}

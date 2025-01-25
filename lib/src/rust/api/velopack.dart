// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `check_and_download_updates`, `create_update_manager`

Future<bool> isUpdateAvailable({required String url}) =>
    RustLib.instance.api.crateApiVelopackIsUpdateAvailable(url: url);

Future<void> updateAndRestart({required String url}) =>
    RustLib.instance.api.crateApiVelopackUpdateAndRestart(url: url);

Future<void> updateAndExit({required String url}) =>
    RustLib.instance.api.crateApiVelopackUpdateAndExit(url: url);

Future<void> waitExitThenUpdate(
        {required String url, required bool silent, required bool restart}) =>
    RustLib.instance.api.crateApiVelopackWaitExitThenUpdate(
        url: url, silent: silent, restart: restart);

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);
  static final ConnectivityController instance = ConnectivityController._();

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    _updateConnectionStatus(result);

    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectionStatus(result);
    });
  }

  void _updateConnectionStatus(ConnectivityResult? result) {
    if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
      isConnected.value = true;
    } else {
      isConnected.value = false;
    }
  }
}

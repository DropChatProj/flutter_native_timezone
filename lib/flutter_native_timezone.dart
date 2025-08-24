import 'dart:async';
import 'package:flutter/services.dart';

class FlutterNativeTimezone {
  static const MethodChannel _channel =
      MethodChannel('flutter_native_timezone');

  static Future<String> getLocalTimezone() async {
    final String timezone = await _channel.invokeMethod('getLocalTimezone');
    return timezone;
  }
}

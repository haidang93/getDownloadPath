import 'dart:async';

import 'package:flutter/services.dart';

class GetDownloadPath {
  static const MethodChannel _channel = MethodChannel('get_download_path');

  static Future<String?> get getPath async {
    final String? path = await _channel.invokeMethod('get_path');
    return path;
  }
}

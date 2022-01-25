import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_download_path/get_download_path.dart';

void main() {
  const MethodChannel channel = MethodChannel('get_download_path');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GetDownloadPath.getPath, '42');
  });
}

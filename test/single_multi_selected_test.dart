import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:single_multi_selected/single_multi_selected.dart';

void main() {
  const MethodChannel channel = MethodChannel('single_multi_selected');

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
    expect(await SingleMultiSelected.platformVersion, '42');
  });
}

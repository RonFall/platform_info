import 'package:flutter/services.dart';
import 'package:platform_info_platform_interface/platform_info_platform_interface.dart';

class PlatformInfoAndroid extends PlatformInfoPlatform {
  static const MethodChannel _channel = MethodChannel('platform_info_android');

  static void registerWith() {
    PlatformInfoPlatform.instance = PlatformInfoAndroid();
  }

  @override
  Future<String?> getPlatformVersion() {
    return _channel.invokeMethod('getPlatformVersion');
  }
}
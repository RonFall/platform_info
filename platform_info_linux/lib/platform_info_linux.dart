import 'package:flutter/services.dart';
import 'package:platform_info_platform_interface/platform_info_platform_interface.dart';

class PlatformInfoLinux extends PlatformInfoPlatform {
  static const MethodChannel _channel = MethodChannel('platform_info_linux');

  static void registerWith() {
    PlatformInfoPlatform.instance = PlatformInfoLinux();
  }

  @override
  Future<String?> getPlatformVersion() {
    return _channel.invokeMethod('getPlatformVersion');
  }
}
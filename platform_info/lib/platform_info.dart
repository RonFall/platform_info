import 'package:platform_info_platform_interface/platform_info_platform_interface.dart';

class PlatformInfo {
  static PlatformInfoPlatform get _platform => PlatformInfoPlatform.instance;

  static Future<String?> getPlatformVersion() async {
    return _platform.getPlatformVersion();
  }
}
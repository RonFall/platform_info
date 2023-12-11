import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class PlatformInfoPlatform extends PlatformInterface {
  PlatformInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static PlatformInfoPlatform _instance = _PlaceholderImplementation();

  /// Стандартный [instance] текущего класса.
  ///
  /// По умолчанию [_PlaceholderImplementation].
  static PlatformInfoPlatform get instance => _instance;

  /// Имплементация текущего [instance] на определенной платформе.
  ///
  /// В коде платформы должна быть реализована функция, определяющая [instance].
  static set instance(PlatformInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

class _PlaceholderImplementation extends PlatformInfoPlatform {}
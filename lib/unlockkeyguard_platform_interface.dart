import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'unlockkeyguard_method_channel.dart';

abstract class UnlockkeyguardPlatform extends PlatformInterface {
  /// Constructs a UnlockkeyguardPlatform.
  UnlockkeyguardPlatform() : super(token: _token);

  static final Object _token = Object();

  static UnlockkeyguardPlatform _instance = MethodChannelUnlockkeyguard();

  /// The default instance of [UnlockkeyguardPlatform] to use.
  ///
  /// Defaults to [MethodChannelUnlockkeyguard].
  static UnlockkeyguardPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [UnlockkeyguardPlatform] when
  /// they register themselves.
  static set instance(UnlockkeyguardPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> unlockKeyguard() {
    throw UnimplementedError('unlockKeyguard() has not been implemented.');
  }
}

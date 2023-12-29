import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'unlockkeyguard_platform_interface.dart';

/// An implementation of [UnlockkeyguardPlatform] that uses method channels.
class MethodChannelUnlockkeyguard extends UnlockkeyguardPlatform {
  /// The method channel used to interact with the native platform.
  final methodChannel = const MethodChannel('unlockkeyguard');

  @override
  Future<bool?> unlockKeyguard() async {
    final hasSucceeded = await methodChannel.invokeMethod<bool>('unlockKeyguard');
    return hasSucceeded;
  }
}

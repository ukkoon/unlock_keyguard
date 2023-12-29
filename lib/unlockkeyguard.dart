
import 'unlockkeyguard_platform_interface.dart';

class Unlockkeyguard {
  Future<bool?> unlockKeyguard() {
    return UnlockkeyguardPlatform.instance.unlockKeyguard();
  }
}

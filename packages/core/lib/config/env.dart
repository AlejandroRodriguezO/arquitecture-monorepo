import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '../../.env', obfuscate: true)
abstract class Env {
  const Env._();

  @EnviedField(varName: 'BASE_URL')
  static final String baseUrl = _Env.baseUrl;
}

class EndPoints {
  const EndPoints._();
  static String get login => '/login';
  static String get register => '/register';
  static String get getClient => '/client';
  static String get verifyCode => '/verification-code';
  static String get verificationCode => '/verification';
}

class TiweeAppEnvironment {
  /// name of the environment
  final String name;

  /// default constructor
  const TiweeAppEnvironment(this.name);

  /// preset of common env name 'dev'
  static const dev = 'dev';

  /// preset of common env name 'prod'
  static const prod = 'prod';

  /// preset of common env name 'test'
  static const staging = 'staging';
}
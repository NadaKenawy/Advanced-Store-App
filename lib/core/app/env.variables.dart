import 'package:flutter_dotenv/flutter_dotenv.dart';

String _enmType = '';

class EnvVariables {
  EnvVariables._();
  static final EnvVariables instance = EnvVariables._();
  Future<void> init() async {
    // ignore: avoid_redundant_argument_values
    await dotenv.load(fileName: '.env');
    _enmType = dotenv.get('ENV_TYPE');
  }

  String get envType => _enmType;
}

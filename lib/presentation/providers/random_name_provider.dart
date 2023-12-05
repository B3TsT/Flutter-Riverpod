import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/config/config.dart';

final randomNameProvider = StateProvider.autoDispose<String>((ref) {
  return RandomGenerator.getRandomName();
});
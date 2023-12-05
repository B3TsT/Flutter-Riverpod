import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/config/config.dart';

final namesStreamProvider = StreamProvider.autoDispose<String>((ref) async* {
  await for(final name in RandomGenerator.randomNameStream()){
    yield name;
  }
});


// final namesStreamProvider = StreamProvider<List<String>>((ref) async* {
//   // return ;
//   await Future.delayed(const Duration(seconds: 2));
//   yield [];
//   await Future.delayed(const Duration(seconds: 2));
//   yield['hola'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield['hola', 'mundo'];
//   await Future.delayed(const Duration(seconds: 2));
//   yield['hola', 'mundo', 'flutter'];
// });x
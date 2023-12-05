import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/config/config.dart';

final pokemonIdProvider = StateProvider<int>((ref) {
  return 1;
});


final pokemonNameProvider = FutureProvider.autoDispose<String>((ref) async {
  final id = ref.watch(pokemonIdProvider);
  final name = await PokemonService.getPokemonName(id);
  return name;
});

// final pokemonNameProvider = FutureProvider.family.autoDispose<String, int>((ref, id) async {
//   final name = await PokemonService.getPokemonName(id);
//   return name;
// });

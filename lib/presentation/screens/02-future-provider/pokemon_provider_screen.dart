import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../providers/providers.dart';

class PokemonScreen extends ConsumerWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonId = ref.watch(pokemonIdProvider);
    final pokemonAsync = ref.watch(pokemonNameProvider);
    // final pokemonAsync = ref.watch(pokemonNameProvider(pokemonId));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pokemon: $pokemonId'),
      ),
      body: Center(
        child: pokemonAsync.when(
          data: ((value) => Text(value)),
          error: (error, stackTrace) => Text('error: $error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            child: const Icon(Icons.plus_one),
            onPressed: () => ref.read(pokemonIdProvider.notifier).update(
                  (state) => state + 1,
                ),
          ),
          const Gap(10),
          FloatingActionButton(
            heroTag: '2',
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => ref.read(pokemonIdProvider.notifier).update(
                  (state) => state - 1,
                ),
          ),
        ],
      ),
    );
  }
}
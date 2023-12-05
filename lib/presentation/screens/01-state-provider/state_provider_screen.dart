import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/presentation/providers/random_name_provider.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(randomNameProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Text(name),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.invalidate(randomNameProvider),
        // ref.read(randomNameProvider.notifier).update(
        //       (state) => state.toLowerCase(),
        //     );
        // },
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}

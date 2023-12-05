import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomNames$ = ref.watch(namesStreamProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stream Screen'),
      ),
      body: Center(
        child: randomNames$.when(
          loading: () => const CircularProgressIndicator(),
          data: (data) => Text(data),
          error: (error, stackTrace) => Text('Error: $error'),
        ),
      ),
    );
  }
}

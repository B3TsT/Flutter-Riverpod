import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('RiverApp'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomTitle(
          title: 'State Provider',
          subTilte: 'Un estado simple',
          location: '/state-provider',
        ),
        _CustomTitle(
          title: 'Future Provider',
          subTilte: 'Un simple future + Family',
          location: '/future-provider',
        ),
        _CustomTitle(
          title: 'Stream Provider',
          subTilte: 'Un simple stream',
          location: '/stream-provider',
        ),
        _CustomTitle(
          title: 'State Notifier Provider',
          subTilte: 'Un provider con estado personalizado',
          location: '/state-notifier-provider',
        ),
      ],
    );
  }
}

class _CustomTitle extends StatelessWidget {
  const _CustomTitle({
    required this.title,
    required this.subTilte,
    required this.location,
  });
  final String title;
  final String subTilte;
  final String location;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTilte),
      onTap: () => context.push(location),
    );
  }
}

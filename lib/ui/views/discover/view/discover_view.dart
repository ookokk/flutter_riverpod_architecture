import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_architecture/ui/views/discover/view_model/discover_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DiscoverView extends HookConsumerWidget {
  const DiscoverView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final discoverList = ref.watch(discoverViewModelProvider);
    final discoverFuture = ref.watch(discoverFutureProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      body: discoverFuture.when(
        data: (movies) {
          if (movies.isNotEmpty) {
            return ListView.builder(
              itemCount: discoverList.length,
              itemBuilder: (context, index) {
                final movie = discoverList[index];
                return ListTile(
                  title: Text(movie.title ?? ''),
                  subtitle: Text(movie.overview ?? ''),
                );
              },
            );
          } else {
            return const Center(child: Text('No data'));
          }
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}

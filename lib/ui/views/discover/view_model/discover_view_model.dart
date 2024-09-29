import 'package:flutter_riverpod_architecture/ui/views/discover/model/movie_item.dart';
import 'package:flutter_riverpod_architecture/ui/views/discover/service/discover_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DiscoverViewModel extends StateNotifier<List<MovieItem>> {
  final Ref ref;

  DiscoverViewModel({required this.ref}) : super([]);

  Future<List<MovieItem>> getTrendingVideos() async {
    final response = await ref.read(discoverServiceProvider).getTrendingVideos();
    return response.results ?? [];
  }

  void setTrendingVideos(List<MovieItem> movies) {
    state = movies;
  }
}

final discoverViewModelProvider =
    StateNotifierProvider.autoDispose<DiscoverViewModel, List<MovieItem>>(
        (ref) => DiscoverViewModel(ref: ref));

final discoverFutureProvider =
    FutureProvider.autoDispose<List<MovieItem>>((ref) async {
  final response =
      await ref.read(discoverViewModelProvider.notifier).getTrendingVideos();
  ref.read(discoverViewModelProvider.notifier).setTrendingVideos(response);
  return response;
});

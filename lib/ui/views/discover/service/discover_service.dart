import 'package:flutter_riverpod_architecture/core/enums/path_enum.dart';
import 'package:flutter_riverpod_architecture/core/global_models/response_model.dart';
import 'package:flutter_riverpod_architecture/core/init/network_manager/network_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class DiscoverService {
  Future<ResponseModel> getTrendingVideos(
      {int page = 1, SubPathEnum subPath = SubPathEnum.movie});
}

class _DiscoverServiceImpl extends DiscoverService {
  final Ref ref;

  _DiscoverServiceImpl({required this.ref});

  @override
  Future<ResponseModel> getTrendingVideos(
      {int page = 1, SubPathEnum subPath = SubPathEnum.movie}) async {
    try {
      final response = await ref.read(networkManagerProvider).get(
            '/${PathEnum.trending.name}/${subPath.name}',
          );
      if (response.statusCode == 200) {
        final data = response.data as Map<String, dynamic>;
        final responseModel = ResponseModel.fromJson(data);
        return responseModel;
      } else {
        throw Exception('Failed to load trending videos');
      }
    } catch (e) {
      throw Exception('Failed to load trending videos');
    }
  }
}

final discoverServiceProvider =
    Provider<DiscoverService>((ref) => _DiscoverServiceImpl(ref: ref));

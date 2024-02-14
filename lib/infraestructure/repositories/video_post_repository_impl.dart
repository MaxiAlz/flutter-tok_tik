import 'package:toktik_app/domain/datasources/video_posts_datasource.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource videoDataSource;

  VideoPostsRepositoryImpl({required this.videoDataSource});

  @override
  Future<List<VideoPost>> getFauvoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoDataSource.getTrendingVideosByPage(page);
  }
}

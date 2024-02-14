import 'package:toktik_app/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);

  Future<List<VideoPost>> getFauvoriteVideosByUser(String userID);
}

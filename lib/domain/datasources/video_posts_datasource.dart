import 'package:toktik_app/domain/entities/video_post.dart';

/*
Así en programación las clases abstractas funcionan como una clase que
 declara la existencia de métodos pero no su implementación
*/
abstract class VideoPostDatasource {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);

  Future<List<VideoPost>> getFauvoriteVideosByUser(String userID);
}

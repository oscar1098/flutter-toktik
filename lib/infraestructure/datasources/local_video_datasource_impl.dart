import 'package:toktik/config/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/config/domain/entities/video_post.dart';
import 'package:toktik/infraestructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class localVideoDatasource  implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
  
    await Future.delayed(const Duration( seconds: 2 ) );

    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity()).toList();
  
  
    return newVideos;
  }




}
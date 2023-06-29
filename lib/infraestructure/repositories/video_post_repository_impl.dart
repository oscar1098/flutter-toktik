


import 'package:toktik/config/domain/datasource/video_posts_datasource.dart';
import 'package:toktik/config/domain/entities/video_post.dart';
import 'package:toktik/config/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements  VideoPostRepository {

  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({
     required this.videosDatasource
  });

  

  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
  
    return videosDatasource.getTrendingVideosByPage(page);
  
  }





}
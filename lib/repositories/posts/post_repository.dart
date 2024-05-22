import '../../models/car_model.dart';

abstract class PostsRepository {
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPostById(int id);
}

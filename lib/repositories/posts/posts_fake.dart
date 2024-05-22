import '../../models/car_model.dart';
import 'post_repository.dart';

class PostsFake extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}

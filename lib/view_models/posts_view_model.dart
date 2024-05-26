import '../models/car_model.dart';
import '../repositories/posts/post_repository.dart';
import 'car_view_model.dart';

class PostsViewModel {
  PostsRepository? postsRepository;
  PostsViewModel({this.postsRepository});

  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postsRepository!.getAllPosts();
    return list.map((post) => PostViewModel(postModel: post)).toList();
  }
}

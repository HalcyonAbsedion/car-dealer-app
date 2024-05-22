import 'package:flutter/material.dart';
import 'package:instagramclone/views/components/post_item.dart';

import '../../repositories/posts/posts_api.dart';
import '../../view_models/car_view_model.dart';
import '../../view_models/posts_view_model.dart';

class PostsView extends StatelessWidget {
  PostsView({Key? key}) : super(key: key);
  //Dependency Injection
  var postsViewModel = PostsViewModel(postsRepository: PostsAPI());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostViewModel>>(
      future: postsViewModel.fetchAllPosts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          var posts = snapshot.data;
          return ListView.builder(
            itemCount: posts?.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => PostTile(car: posts![index]),
          );
        }
      },
    );
  }
}

import 'dart:convert';

// import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../../models/car_model.dart';
import 'post_repository.dart';

class PostsAPI extends PostsRepository {
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try {
      // var response =
      //     await Dio().get('https://jsonplaceholder.typicode.com/posts');
      // var list = response.data as List;
      // posts = list.map((post) => PostModel.fromJson(post)).toList();
      var response = await rootBundle.loadString('assets/cars.json');
      List<dynamic> data = json.decode(response);
      return data.map((post) => PostModel.fromJson(post)).toList();
    } catch (exception) {
      // print(exception);
    }
    return posts;
  }

  @override
  Future<PostModel> getPostById(int id) {
    throw UnimplementedError();
  }
}

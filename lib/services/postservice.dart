import 'package:untitled/model/posts.dart';
import 'package:dio/dio.dart';

class PostService {
  var baseurl = "https://jsonplaceholder.typicode.com/";
  var postsurl = "posts";

  Future<List<Post>> getPosts() async {
    List<Post> posts = [];
    Response res = await Dio().get('$baseurl$postsurl');
    var data = res.data;
    data.forEach((element) {
      Post post = Post.fromJson(element);
      posts.add(post);
    });
    return posts;
  }
}

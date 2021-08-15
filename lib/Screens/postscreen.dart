import 'package:flutter/material.dart';
import 'package:untitled/Widgets/mycard.dart';
import 'package:untitled/model/posts.dart';
import 'package:untitled/services/postservice.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  bool loading = true;
  List<Post> posts = [];

  getPostList() async {
    posts = await PostService().getPosts();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getPostList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Posts Screen")),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyCard(content: '${posts[index].id}'));
              },
            ),
    );
  }
}

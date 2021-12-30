import 'package:flutter/cupertino.dart';

class PostModel {
  final String userImage;
  final String userName;
  final String video;
  final String timePostCreated;
  final String titlePost;
  final String videoName;

  PostModel({
    required this.userImage,
    required this.userName,
    required this.video,
    required this.timePostCreated,
    required this.titlePost,
    required this.videoName,
  });
}

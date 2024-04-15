import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/data/model/User.dart';

Widget UserWidget(User user) {
  return Column(
    children: [
      CachedNetworkImage(
        height: 150,
        fit: BoxFit.cover,
        imageUrl: user.items!.first.avatarUrl!,
        placeholder: (context, url) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        },
        errorWidget: (context, url, error) {
          return const Center(
            child: Text("오류 발생"),
          );
        },
      ),
      Text("name : ${user.items!.first.login!}")
    ]
  );
}
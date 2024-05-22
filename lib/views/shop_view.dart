import 'package:flutter/material.dart';
import 'package:instagramclone/views/posts/posts_view.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return PostsView();
  }
}

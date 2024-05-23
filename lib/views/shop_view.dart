import 'package:flutter/material.dart';
import 'package:instagramclone/views/posts/posts_view.dart';

import 'components/searchbar.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const MySearchBar(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Elevate your driving experience",
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Best Selling 🔥",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18)),
              Text(
                "See all",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Expanded(
          child: PostsView(),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Divider(color: Theme.of(context).colorScheme.primary),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagramclone/view_models/shop_view_model.dart';
import 'package:instagramclone/views/posts/posts_view.dart';

import 'components/searchbar.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  final ShopViewModel _shopViewModel = ShopViewModel();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const MySearchBar(),
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  'https://marketing.x.com/content/dam/marketing-twitter/emea/en_gb/success-stories/mena/2022/0112GMCHeader.jpg.twimg.1920.jpg'), // Replace with your actual image path
              fit: BoxFit.cover,
            ),
            borderRadius:
                BorderRadius.circular(12.0), // Optional: rounded corners
          ),
          child: const Center(
            child: Text(
              'Your Text Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors
                    .black45, // Optional: text background color for better readability
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            _shopViewModel.quote,
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, bottom: 5, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_shopViewModel.itemListHeaderText,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 18)),
              Text(
                _shopViewModel.seeAllButtonText,
                style: const TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.w600),
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
